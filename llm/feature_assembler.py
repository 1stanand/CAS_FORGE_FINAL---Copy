"""
llm/feature_assembler.py
------------------------
Deterministic multi-pass anchored scenario construction.

This module intentionally keeps retrieval as the source of truth and renders
feature files through ordered/unordered templates.
"""

from __future__ import annotations

from dataclasses import dataclass
from difflib import SequenceMatcher
import logging
import os
import re
from typing import Optional

from db.connection import get_conn, get_cursor
from jira.jira_parser import JiraStory
from catalogue.retrieval import search
from config.workflow import detect_stage, detect_sub_tags

_log = logging.getLogger(__name__)

_PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
_TEMPLATE_DIR = os.path.join(_PROJECT_ROOT, "Feature_Templates")
_ORDERED_TEMPLATE = os.path.join(_TEMPLATE_DIR, "ordered.feature")
_UNORDERED_TEMPLATE = os.path.join(_TEMPLATE_DIR, "unordered.feature")

_ACTION_KEYWORDS = {"When", "And", "But"}
_ASSERTION_KEYWORDS = {"Then", "And", "But"}
_STEP_LINE = re.compile(r"^(\s*)(Given|When|Then|And|But)\s+(.*\S)\s*$")
_PLACEHOLDER_RE = re.compile(r"<([^>]+)>")

_MAX_SETUP_STEPS = 4
_MAX_ACTION_CONT = 2
_MAX_ANCHOR_VARIANTS = 2
_INTENT_STOPWORDS = {
    "user", "users", "system", "screen", "page", "field", "fields",
    "should", "able", "allow", "allows", "using", "with", "from",
    "that", "this", "when", "where", "which", "into", "for", "and",
    "the", "all", "any", "one", "more", "less", "than", "only",
    "details", "data", "application", "loan", "credit",
}


def _normalize_step_text(step_text: str) -> str:
    """
    Normalize repository step text for safe single-line emission.

    Some ingested step rows contain inline table rows/newlines as part of the
    same DB step_text. We keep the leading business step line to preserve
    authenticity while avoiding malformed scenario output.
    """
    if not step_text:
        return ""

    lines = [ln.strip() for ln in str(step_text).replace("\r\n", "\n").split("\n")]
    primary = ""
    for ln in lines:
        if not ln:
            continue
        if ln.startswith("|"):
            continue
        primary = ln
        break
    if not primary:
        primary = next((ln for ln in lines if ln), "")
    if not primary:
        return ""

    primary = re.sub(r"\s*###.*$", "", primary).strip()
    primary = re.sub(r"\s+", " ", primary).strip()
    return primary


def _canonical_step_text(step_text: str) -> str:
    text = _normalize_step_text(step_text).lower()
    text = re.sub(r"<[^>]+>", "<var>", text)
    text = re.sub(r"\s+", " ", text).strip()
    return text


@dataclass
class ScenarioPlan:
    intent: str
    title: str
    given_steps: list[str]
    when_steps: list[str]
    then_step: str
    then_and_step: Optional[str]
    placeholders: list[str]
    tags: list[str]


def assemble_feature(
    story: JiraStory,
    intents: list[str],
    flow_type: str,
) -> str:
    """
    Build feature text from approved intents using anchored multi-pass planning.

    flow_type must be explicit user input: "ordered" or "unordered".
    """
    if flow_type not in {"ordered", "unordered"}:
        raise ValueError("flow_type must be 'ordered' or 'unordered'")
    if not intents:
        raise ValueError(f"No intents provided for story {story.issue_key}")

    stage_query = f"{story.summary} {story.impacted_areas}"
    detected_stage = detect_stage(stage_query)
    detected_sub_tags = detect_sub_tags(stage_query)

    template_text = _load_template(flow_type)
    plans = _plan_scenarios(
        intents=intents,
        flow_type=flow_type,
        detected_stage=detected_stage,
        detected_sub_tags=detected_sub_tags,
    )

    rendered = _render_feature(
        story=story,
        flow_type=flow_type,
        template_text=template_text,
        scenario_plans=plans,
        detected_stage=detected_stage,
        detected_sub_tags=detected_sub_tags,
    )
    grounded = _ground_steps_to_repo(rendered)
    return grounded


def _load_template(flow_type: str) -> str:
    path = _ORDERED_TEMPLATE if flow_type == "ordered" else _UNORDERED_TEMPLATE
    if not os.path.isfile(path):
        raise FileNotFoundError(f"Template not found: {path}")
    with open(path, encoding="utf-8") as f:
        return f.read()


def _plan_scenarios(
    intents: list[str],
    flow_type: str,
    detected_stage: Optional[str],
    detected_sub_tags: list[str],
) -> list[ScenarioPlan]:
    plans: list[ScenarioPlan] = []

    for intent_index, intent in enumerate(intents, 1):
        anchors = _select_anchor_variants(
            intent=intent,
            detected_stage=detected_stage,
            max_variants=_MAX_ANCHOR_VARIANTS,
        )
        if not anchors:
            continue

        for variant_idx, anchor in enumerate(anchors, 1):
            plan = _build_plan_from_anchor(
                intent=intent,
                intent_index=intent_index,
                variant_idx=variant_idx,
                flow_type=flow_type,
                anchor=anchor,
                detected_stage=detected_stage,
                detected_sub_tags=detected_sub_tags,
            )
            if plan:
                plans.append(plan)

    if not plans:
        # Hard fallback to avoid empty output.
        for i, intent in enumerate(intents, 1):
            fallback = search(intent, top_k=1)
            if not fallback:
                continue
            top = fallback[0]
            step_text = _normalize_step_text(str(top.get("step_text", "")))
            if not step_text:
                continue
            plans.append(
                ScenarioPlan(
                    intent=intent,
                    title=f"Scenario {i}: {intent}",
                    given_steps=[_fallback_given_step(flow_type)],
                    when_steps=[step_text],
                    then_step=_fallback_then_step(intent, top),
                    then_and_step=None,
                    placeholders=_extract_placeholders([step_text]),
                    tags=[t for t in [detected_stage, *detected_sub_tags] if t],
                )
            )

    return _dedupe_plans(plans)


def _dedupe_plans(plans: list[ScenarioPlan]) -> list[ScenarioPlan]:
    out: list[ScenarioPlan] = []
    seen: set[str] = set()
    for p in plans:
        when_sig = " | ".join(_canonical_step_text(s) for s in p.when_steps if s)
        then_sig = _canonical_step_text(p.then_step)
        given_tail = _canonical_step_text(p.given_steps[-1]) if p.given_steps else ""
        sig = f"{when_sig}::{then_sig}::{given_tail}"
        if not when_sig or not then_sig:
            continue
        if sig in seen:
            continue
        seen.add(sig)
        out.append(p)
    return out


def _dedupe_steps(step_texts: list[str]) -> list[str]:
    out: list[str] = []
    seen: set[str] = set()
    for raw in step_texts:
        text = _normalize_step_text(raw)
        key = _canonical_step_text(text)
        if not key or key in seen:
            continue
        seen.add(key)
        out.append(text)
    return out


def _select_anchor_variants(
    intent: str,
    detected_stage: Optional[str],
    max_variants: int,
) -> list[dict]:
    query = intent
    if detected_stage:
        query = f"{intent} at {detected_stage.lstrip('@').lower()} stage"

    hits = search(query=query, top_k=25)
    if not hits:
        return []

    action_hits = [
        h for h in hits
        if h.get("keyword") in _ACTION_KEYWORDS and h.get("step_text")
    ]
    if not action_hits:
        action_hits = [h for h in hits if h.get("step_text")]

    ranked = sorted(
        action_hits,
        key=lambda h: _anchor_rank(h, intent),
        reverse=True,
    )

    aligned = [h for h in ranked if _anchor_matches_intent(h, intent)]
    if aligned:
        ranked = aligned

    chosen: list[dict] = []
    used_scenarios: set[str] = set()
    primary_rank = None

    for h in ranked:
        scenario_key = f"{h.get('file_path', '')}::{h.get('scenario_title', '')}"
        if scenario_key in used_scenarios:
            continue
        rank = _anchor_rank(h, intent)
        if primary_rank is None:
            primary_rank = rank
        elif rank < primary_rank * 0.72:
            continue

        if chosen:
            first = chosen[0]
            cur_step = _canonical_step_text(str(h.get("step_text", "")))
            first_step = _canonical_step_text(str(first.get("step_text", "")))
            if cur_step and cur_step == first_step:
                continue
            if (
                _overlap_ratio(cur_step, first_step) > 0.82
                and h.get("screen_context") == first.get("screen_context")
            ):
                continue

        chosen.append(h)
        used_scenarios.add(scenario_key)
        if len(chosen) >= max_variants:
            break

    return chosen


def _anchor_rank(hit: dict, intent: str) -> float:
    score = float(hit.get("score", 0.0))
    kw = hit.get("keyword", "")
    if kw == "When":
        score += 0.12
    elif kw in {"And", "But"}:
        score += 0.06
    elif kw == "Then":
        score -= 0.20

    step_text = _normalize_step_text(str(hit.get("step_text", "")))
    score += 0.30 * _overlap_ratio(intent, step_text)
    return score


def _anchor_matches_intent(hit: dict, intent: str) -> bool:
    terms = _meaningful_terms(intent)
    if not terms:
        return True

    blob = " ".join([
        _normalize_step_text(str(hit.get("step_text", ""))),
        str(hit.get("scenario_title", "")),
        str(hit.get("screen_context", "")),
    ]).lower()

    matched = sum(1 for t in terms if t in blob)
    required = 1 if len(terms) <= 3 else 2
    return matched >= required


def _build_plan_from_anchor(
    intent: str,
    intent_index: int,
    variant_idx: int,
    flow_type: str,
    anchor: dict,
    detected_stage: Optional[str],
    detected_sub_tags: list[str],
) -> Optional[ScenarioPlan]:
    scenario_steps = anchor.get("scenario_steps") or []
    if not scenario_steps:
        return None

    anchor_idx = _find_anchor_index(anchor, scenario_steps)
    if anchor_idx < 0:
        return None

    setup = _collect_setup_steps(scenario_steps, anchor_idx)
    actions = _collect_action_steps(scenario_steps, anchor_idx)
    if not actions:
        fallback_action = _normalize_step_text(str(anchor.get("step_text", "")))
        actions = [fallback_action] if fallback_action else []
    setup = _dedupe_steps(setup)
    actions = _dedupe_steps(actions)
    if not actions:
        return None

    local_then, local_and = _collect_local_assertions(scenario_steps, anchor_idx, intent, anchor)
    anchor_action = actions[0] if actions else str(anchor.get("step_text", ""))
    if local_then and not _is_assertion_relevant(local_then, intent, anchor_action):
        local_then, local_and = None, None

    if not local_then:
        local_then, local_and = _retrieve_assertions(intent, anchor, detected_stage)
        if local_then and not _is_assertion_relevant(local_then, intent, anchor_action):
            local_then, local_and = None, None

    if not local_then:
        local_then = _fallback_then_step(intent, anchor)
        local_and = None

    local_and = _filter_optional_assertion(local_and, intent, actions[0], local_then)

    title = _build_scenario_title(intent, intent_index, variant_idx)
    tags = [t for t in [detected_stage, *detected_sub_tags] if t]
    if not tags:
        tags = ["@Generated"]

    step_texts_for_placeholders = setup + actions + [local_then]
    if local_and:
        step_texts_for_placeholders.append(local_and)
    placeholders = _extract_placeholders(step_texts_for_placeholders)

    if flow_type == "ordered":
        given_steps = _dedupe_steps([_fallback_given_step("ordered"), *setup])
    else:
        given_steps = _dedupe_steps(setup if setup else [_fallback_given_step("unordered")])

    return ScenarioPlan(
        intent=intent,
        title=title,
        given_steps=given_steps,
        when_steps=actions,
        then_step=local_then,
        then_and_step=local_and,
        placeholders=placeholders,
        tags=tags,
    )


def _find_anchor_index(anchor: dict, scenario_steps: list[dict]) -> int:
    target_kw = str(anchor.get("keyword", "")).strip().lower()
    target_txt = _canonical_step_text(str(anchor.get("step_text", "")))
    for i, s in enumerate(scenario_steps):
        kw = str(s.get("keyword", "")).strip().lower()
        txt = _canonical_step_text(str(s.get("step_text", "")))
        if kw == target_kw and txt == target_txt:
            return i
    for i, s in enumerate(scenario_steps):
        txt = _canonical_step_text(str(s.get("step_text", "")))
        if txt == target_txt:
            return i
    return -1


def _collect_setup_steps(scenario_steps: list[dict], anchor_idx: int) -> list[str]:
    raw = [_normalize_step_text(str(s.get("step_text", ""))) for s in scenario_steps[:anchor_idx]]
    raw = [x for x in raw if x]
    if not raw:
        return []
    if len(raw) > _MAX_SETUP_STEPS:
        raw = raw[-_MAX_SETUP_STEPS:]
    return raw


def _collect_action_steps(scenario_steps: list[dict], anchor_idx: int) -> list[str]:
    actions: list[str] = []
    anchor_txt = _normalize_step_text(str(scenario_steps[anchor_idx].get("step_text", "")))
    if anchor_txt:
        actions.append(anchor_txt)

    cont = 0
    for s in scenario_steps[anchor_idx + 1:]:
        kw = str(s.get("keyword", "")).strip()
        txt = _normalize_step_text(str(s.get("step_text", "")))
        if not txt:
            continue
        if kw == "Then":
            break
        if kw in _ACTION_KEYWORDS:
            if cont >= _MAX_ACTION_CONT:
                break
            actions.append(txt)
            cont += 1
        else:
            break
    return actions


def _collect_local_assertions(
    scenario_steps: list[dict],
    anchor_idx: int,
    intent: str,
    anchor: dict,
) -> tuple[Optional[str], Optional[str]]:
    then_step: Optional[str] = None
    and_step: Optional[str] = None
    found_then = False

    for s in scenario_steps[anchor_idx + 1:]:
        kw = str(s.get("keyword", "")).strip()
        txt = _normalize_step_text(str(s.get("step_text", "")))
        if not txt:
            continue

        if not found_then:
            if kw == "Then":
                then_step = txt
                found_then = True
            continue

        # Only allow one optional assertion And/But after Then.
        if kw in {"And", "But"} and and_step is None:
            and_step = txt
            break

        # Stop as soon as assertion chain ends.
        break

    if then_step and and_step:
        and_step = _filter_optional_assertion(
            and_step,
            intent=intent,
            anchor_text=str(anchor.get("step_text", "")),
            then_text=then_step,
        )
    return then_step, and_step


def _retrieve_assertions(
    intent: str,
    anchor: dict,
    detected_stage: Optional[str],
) -> tuple[Optional[str], Optional[str]]:
    anchor_text = _normalize_step_text(str(anchor.get("step_text", "")))
    query = f"{intent} expected result {anchor_text}".strip()
    if detected_stage:
        query = f"{query} at {detected_stage.lstrip('@').lower()} stage"

    then_hits = search(query=query, top_k=10, keyword_filter="Then")
    then_best = _pick_assertion_by_context(then_hits, intent, anchor)
    if not then_best:
        return None, None

    and_hits = search(query=query, top_k=10, keyword_filter="And")
    and_best = _pick_assertion_by_context(and_hits, intent, anchor)
    and_text = None
    if and_best:
        and_text = _filter_optional_assertion(
            and_best.get("step_text"),
            intent=intent,
            anchor_text=anchor_text,
            then_text=then_best.get("step_text", ""),
        )

    then_text = _normalize_step_text(str(then_best.get("step_text", "")))
    if not then_text:
        return None, None
    return then_text, and_text


def _pick_assertion_by_context(cands: list[dict], intent: str, anchor: dict) -> Optional[dict]:
    if not cands:
        return None
    anchor_file = anchor.get("file_path")
    anchor_screen = anchor.get("screen_context")
    anchor_step = _normalize_step_text(str(anchor.get("step_text", "")))

    def rank(c: dict) -> float:
        score = float(c.get("score", 0.0))
        if anchor_file and c.get("file_path") == anchor_file:
            score += 0.20
        if anchor_screen and c.get("screen_context") == anchor_screen:
            score += 0.15
        cand_text = _normalize_step_text(str(c.get("step_text", "")))
        score += 0.25 * _overlap_ratio(intent, cand_text)
        score += 0.15 * _overlap_ratio(anchor_step, cand_text)
        return score

    best = max(cands, key=rank)
    best_text = _normalize_step_text(str(best.get("step_text", "")))
    if not best_text:
        return None
    if _meaningful_overlap(intent, best_text) < 0.08 and _meaningful_overlap(anchor_step, best_text) < 0.08:
        return None
    return best


def _filter_optional_assertion(
    candidate: Optional[str],
    intent: str,
    anchor_text: str,
    then_text: str,
) -> Optional[str]:
    if not candidate:
        return None
    candidate = _normalize_step_text(candidate)
    if not candidate:
        return None
    then_text = _normalize_step_text(then_text)
    if candidate.lower() == then_text.lower():
        return None

    intent_overlap = _overlap_ratio(intent, candidate)
    anchor_overlap = _overlap_ratio(anchor_text, candidate)
    then_overlap = _overlap_ratio(then_text, candidate)

    if max(intent_overlap, anchor_overlap, then_overlap) < 0.15:
        return None
    return candidate


def _is_assertion_relevant(then_text: str, intent: str, anchor_text: str) -> bool:
    then_text = _normalize_step_text(then_text)
    if not then_text:
        return False
    if _meaningful_overlap(intent, then_text) >= 0.10:
        return True
    if _meaningful_overlap(anchor_text, then_text) >= 0.10:
        return True
    # Keep explicit success/failure outcomes as meaningful assertions.
    outcome_words = {"success", "successfully", "error", "failed", "display", "visible", "updated", "saved"}
    return any(w in _tokenize(then_text) for w in outcome_words)


def _build_scenario_title(intent: str, intent_index: int, variant_idx: int) -> str:
    base = intent.strip()
    if not base:
        base = f"Scenario {intent_index}"
    if variant_idx > 1:
        return f"{base} - Variant {variant_idx}"
    return base


def _extract_placeholders(step_texts: list[str]) -> list[str]:
    out: list[str] = []
    seen: set[str] = set()
    skip = {"LogicalID", "ProductType", "ApplicationStage"}
    for text in step_texts:
        for p in _PLACEHOLDER_RE.findall(text or ""):
            key = p.strip()
            if not key or key in skip or key in seen:
                continue
            seen.add(key)
            out.append(key)
    return out


def _tokenize(text: str) -> set[str]:
    return {
        t for t in re.findall(r"[a-z0-9]+", (text or "").lower())
        if len(t) >= 3
    }


def _meaningful_terms(text: str) -> set[str]:
    return {t for t in _tokenize(text) if t not in _INTENT_STOPWORDS}


def _meaningful_overlap(a: str, b: str) -> float:
    ta = _meaningful_terms(a)
    tb = _meaningful_terms(b)
    if not ta or not tb:
        return 0.0
    inter = len(ta & tb)
    return inter / max(len(ta), 1)


def _overlap_ratio(a: str, b: str) -> float:
    ta = _tokenize(a)
    tb = _tokenize(b)
    if not ta or not tb:
        return 0.0
    inter = len(ta & tb)
    denom = min(len(ta), len(tb))
    return inter / max(denom, 1)


def _fallback_given_step(flow_type: str) -> str:
    if flow_type == "ordered":
        # Template-approved ordered prerequisite boilerplate.
        return 'all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"'

    # Prefer repo-authentic prerequisite lines for unordered.
    cands = search("all prerequisite are performed", top_k=5, keyword_filter="Given")
    if cands:
        return _normalize_step_text(str(cands[0].get("step_text", "")))
    return "all prerequisite are performed"


def _fallback_then_step(intent: str, anchor: dict) -> str:
    query = f"{intent} expected result {anchor.get('step_text', '')}".strip()
    cands = search(query, top_k=5, keyword_filter="Then")
    if cands:
        txt = _normalize_step_text(str(cands[0].get("step_text", "")))
        if txt:
            return txt
    any_hit = search(intent, top_k=5)
    if any_hit:
        txt = _normalize_step_text(str(any_hit[0].get("step_text", "")))
        if txt:
            return txt
    return "expected behaviour should be observed"


def _render_feature(
    story: JiraStory,
    flow_type: str,
    template_text: str,
    scenario_plans: list[ScenarioPlan],
    detected_stage: Optional[str],
    detected_sub_tags: list[str],
) -> str:
    tag_lines = _extract_top_template_tags(
        template_text=template_text,
        story=story,
        flow_type=flow_type,
        detected_stage=detected_stage,
        detected_sub_tags=detected_sub_tags,
    )

    lines: list[str] = []
    lines.extend(tag_lines)

    dict_lines = _extract_unordered_dicts(template_text) if flow_type == "unordered" else []
    if dict_lines:
        lines.append("")
        lines.extend(dict_lines)

    if lines:
        lines.append("")
    lines.append(f"Feature: {story.summary}")

    if flow_type == "unordered":
        bg = _extract_unordered_background(template_text)
        if bg:
            lines.append("")
            lines.extend(bg)

    for i, plan in enumerate(scenario_plans, 1):
        lines.append("")
        lines.extend(_render_scenario_block(story, plan, flow_type, i))

    return "\n".join(lines).rstrip() + "\n"


def _extract_top_template_tags(
    template_text: str,
    story: JiraStory,
    flow_type: str,
    detected_stage: Optional[str],
    detected_sub_tags: list[str],
) -> list[str]:
    raw_tags = _extract_initial_template_tags(template_text)
    if not raw_tags:
        return []

    primary_module = (detected_sub_tags[0].lstrip("@") if detected_sub_tags else "AppInfo")
    optional_release = (detected_stage.lstrip("@") if detected_stage else "Generated")
    optional_flow = "OrderedFlow" if flow_type == "ordered" else "UnorderedFlow"

    mapping = {
        "<EpicName>": story.issue_key.split("-")[0],
        "<AuthorName>": "CASForge",
        "<ImplementedBy>": "CASForge",
        "<ReviewedBy>": "CASForge",
        "<PrimaryModuleTag>": primary_module,
        "<OptionalReleaseTag>": optional_release,
        "<OptionalFlowTag>": optional_flow,
        "<JIRA_ID>": story.issue_key,
        "<Feature Title>": story.summary,
    }

    rendered: list[str] = []
    for line in raw_tags:
        for k, v in mapping.items():
            line = line.replace(k, v)
        # Keep only fully-resolved top tags.
        if _PLACEHOLDER_RE.search(line):
            continue
        rendered.append(line)
    return rendered


def _extract_initial_template_tags(template_text: str) -> list[str]:
    """
    Read only the leading top-level annotation block from template.

    This prevents scenario/example-level tag placeholders from being copied into
    file-level tags.
    """
    lines = template_text.splitlines()
    i = 0
    while i < len(lines) and not lines[i].strip():
        i += 1

    tags: list[str] = []
    while i < len(lines):
        stripped = lines[i].strip()
        if not stripped:
            break
        if stripped.startswith("@"):
            tags.append(stripped)
            i += 1
            continue
        break
    return tags


def _extract_unordered_dicts(template_text: str) -> list[str]:
    return [line.rstrip() for line in template_text.splitlines() if line.strip().startswith("#${")]


def _extract_unordered_background(template_text: str) -> list[str]:
    lines = template_text.splitlines()
    start = None
    for i, line in enumerate(lines):
        if line.strip().startswith("Background:"):
            start = i
            break
    if start is None:
        return []

    out: list[str] = []
    for line in lines[start:]:
        if line.strip().startswith("Scenario Outline:"):
            break
        if not line.strip():
            if out:
                out.append("")
            continue
        out.append(line.rstrip())
    return [x for x in out if x is not None]


def _render_scenario_block(
    story: JiraStory,
    plan: ScenarioPlan,
    flow_type: str,
    scenario_number: int,
) -> list[str]:
    lines: list[str] = []
    indent = "    "
    step_indent = "        "

    if flow_type == "ordered":
        lines.append(f'{indent}Scenario Outline: For App with [ <LogicalID> ] {plan.title}')
    else:
        lines.append(f"{indent}Scenario Outline: {plan.title}")

    # Given chain
    given_steps = [s for s in plan.given_steps if s]
    if not given_steps:
        given_steps = [_fallback_given_step(flow_type)]
    lines.append(f"{step_indent}Given {given_steps[0]}")
    for s in given_steps[1:]:
        lines.append(f"{step_indent}And {s}")

    # When/action chain
    when_steps = [s for s in plan.when_steps if s]
    if when_steps:
        lines.append(f"{step_indent}When {when_steps[0]}")
        for s in when_steps[1:]:
            lines.append(f"{step_indent}And {s}")

    # Assertion rule: Then + optional one And only.
    lines.append(f"{step_indent}Then {plan.then_step}")
    if plan.then_and_step:
        lines.append(f"{step_indent}And {plan.then_and_step}")

    lines.append("")

    if flow_type == "unordered":
        tag_text = " ".join(plan.tags) if plan.tags else "@Generated"
        lines.append(f"{step_indent}{tag_text}")

    lines.extend(_render_examples(story, plan, flow_type, scenario_number, step_indent))
    return lines


def _render_examples(
    story: JiraStory,
    plan: ScenarioPlan,
    flow_type: str,
    scenario_number: int,
    step_indent: str,
) -> list[str]:
    if flow_type == "ordered":
        cols = ["LogicalID", "ProductType"] + plan.placeholders
        values = [f"{story.issue_key}_{scenario_number}", "<ProductType>"] + [f"<{p}>" for p in plan.placeholders]
    else:
        cols = ["ProductType", "ApplicationStage"] + plan.placeholders
        values = ["<ProductType>", "<ApplicationStage>"] + [f"<{p}>" for p in plan.placeholders]

    if not cols:
        cols = ["col1"]
        values = ["val1"]

    header = " | ".join(cols)
    row = " | ".join(values)

    return [
        f"{step_indent}Examples:",
        f"{step_indent}    | {header} |",
        f"{step_indent}    | {row} |",
    ]


def _ground_steps_to_repo(feature_text: str) -> str:
    """
    Final authenticity pass:
      - step text must exist in repository, or
      - be allowed template boilerplate.
    """
    lines = feature_text.splitlines()
    fixed = lines[:]
    unresolved_steps: list[tuple[str, str]] = []

    conn = get_conn()
    try:
        with get_cursor(conn) as cur:
            for i, line in enumerate(lines):
                m = _STEP_LINE.match(line)
                if not m:
                    continue
                indent, keyword, step_text = m.groups()
                if _is_template_boilerplate(step_text):
                    continue
                if _step_exists(cur, step_text):
                    continue

                replacement = _best_replacement(step_text, keyword)
                if replacement:
                    fixed[i] = f"{indent}{keyword} {replacement}"
                else:
                    unresolved_steps.append((keyword, _normalize_step_text(step_text)))
    finally:
        conn.close()

    grounded_text = "\n".join(fixed)
    if unresolved_steps:
        grounded_text = _inject_new_step_notice(grounded_text, unresolved_steps)

    # Safety formatting on final output.
    return _enforce_cas_format(grounded_text, None, [])


def _inject_new_step_notice(feature_text: str, unresolved_steps: list[tuple[str, str]]) -> str:
    deduped: list[tuple[str, str]] = []
    seen: set[str] = set()
    for kw, step in unresolved_steps:
        canonical = f"{kw.lower()}::{_canonical_step_text(step)}"
        if not step or canonical in seen:
            continue
        seen.add(canonical)
        deduped.append((kw, step))

    if not deduped:
        return feature_text

    lines = feature_text.splitlines()
    feature_idx = next((i for i, ln in enumerate(lines) if ln.lstrip().startswith("Feature:")), -1)
    if feature_idx < 0:
        return feature_text

    notice = [
        "",
        "    # CASForge notice: some steps were not found in repository and were generated.",
    ]
    for kw, step in deduped[:12]:
        notice.append(f"    # [NEW_STEP_NOT_IN_REPO] {kw} {step}")

    lines[feature_idx + 1:feature_idx + 1] = notice
    return "\n".join(lines)


def _is_template_boilerplate(step_text: str) -> bool:
    t = _canonical_step_text(step_text)
    return t in {
        _canonical_step_text('all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"'),
        _canonical_step_text("user is on CAS Login Page"),
        _canonical_step_text('user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0'),
    }


def _step_exists(cur, step_text: str) -> bool:
    canonical = _canonical_step_text(step_text)
    if not canonical:
        return False
    cur.execute(
        """
        SELECT 1
        FROM steps
        WHERE regexp_replace(lower(trim(step_text)), '[[:space:]]+', ' ', 'g') = %s
           OR regexp_replace(lower(trim(split_part(step_text, E'\\n', 1))), '[[:space:]]+', ' ', 'g') = %s
        LIMIT 1
        """,
        (canonical, canonical),
    )
    if cur.fetchone() is not None:
        return True

    cur.execute(
        """
        SELECT
          GREATEST(
            word_similarity(regexp_replace(lower(trim(step_text)), '[[:space:]]+', ' ', 'g'), %s),
            word_similarity(regexp_replace(lower(trim(split_part(step_text, E'\\n', 1))), '[[:space:]]+', ' ', 'g'), %s)
          ) AS sim
        FROM steps
        WHERE lower(step_text) %% %s
           OR lower(split_part(step_text, E'\\n', 1)) %% %s
        ORDER BY sim DESC
        LIMIT 1
        """,
        (canonical, canonical, canonical, canonical),
    )
    row = cur.fetchone()
    sim = float(row["sim"]) if row and row.get("sim") is not None else 0.0
    return sim >= 0.72


def _best_replacement(step_text: str, keyword: str) -> Optional[str]:
    by_kw = search(step_text, top_k=1, keyword_filter=keyword)
    if by_kw:
        normalized = _normalize_step_text(str(by_kw[0].get("step_text", "")))
        if normalized:
            return normalized

    any_hit = search(step_text, top_k=3)
    if any_hit:
        # keep semantically closest by simple text similarity
        raw = step_text.lower()
        best = max(
            any_hit,
            key=lambda r: SequenceMatcher(None, raw, r.get("step_text", "").lower()).ratio(),
        )
        normalized = _normalize_step_text(str(best.get("step_text", "")))
        if normalized:
            return normalized
    return None


def _clean_output(raw: str, story: JiraStory) -> str:
    """
    Backward-compatible helper retained for tests.
    """
    m = re.search(r"^Feature:", raw, re.MULTILINE)
    if not m:
        return f"Feature: {story.summary}\n\n{raw.strip()}"
    body = raw[m.start():]
    lines = body.splitlines()

    out: list[str] = []
    for line in lines:
        stripped = line.strip()
        if not stripped:
            if out and out[-1] != "":
                out.append("")
            continue
        if _is_gherkin_output_line(stripped):
            out.append(line.rstrip())
            continue
        # Drop trailing model chatter once non-Gherkin text starts.
        break

    while out and out[-1] == "":
        out.pop()
    return "\n".join(out).rstrip()


def _is_gherkin_output_line(stripped_line: str) -> bool:
    return (
        stripped_line.startswith("Feature:")
        or stripped_line.startswith("Background:")
        or stripped_line.startswith("Scenario:")
        or stripped_line.startswith("Scenario Outline:")
        or stripped_line.startswith("Examples:")
        or stripped_line.startswith("@")
        or stripped_line.startswith("|")
        or stripped_line.startswith("#${")
        or stripped_line.startswith("Given ")
        or stripped_line.startswith("When ")
        or stripped_line.startswith("Then ")
        or stripped_line.startswith("And ")
        or stripped_line.startswith("But ")
    )


def _enforce_cas_format(
    feature_text: str,
    stage_annotation: Optional[str],
    sub_tag_annotations: list[str],
) -> str:
    """
    Formatting guard:
      - convert Scenario: to Scenario Outline:
      - remove inline tags from Feature line
      - ensure every scenario has Examples
      - optionally enforce tags above Examples when stage/sub-tags are provided
    """
    lines = feature_text.splitlines()
    if not lines:
        return feature_text

    for i, line in enumerate(lines):
        if line.lstrip().startswith("Feature:"):
            lines[i] = re.sub(r"\s+@\w.*$", "", line).rstrip()
            break

    for i, line in enumerate(lines):
        m = re.match(r"^(\s*)Scenario:\s*(.+)$", line)
        if m:
            lines[i] = f"{m.group(1)}Scenario Outline: {m.group(2)}"

    wanted_tags = [t for t in [stage_annotation, *sub_tag_annotations] if t]
    wanted_tag_text = " ".join(wanted_tags)

    scenario_idxs = [i for i, x in enumerate(lines) if x.lstrip().startswith("Scenario Outline:")]
    inserts: list[tuple[int, list[str]]] = []
    for s_i, start in enumerate(scenario_idxs):
        end = scenario_idxs[s_i + 1] if s_i + 1 < len(scenario_idxs) else len(lines)
        block = lines[start:end]
        if any(x.strip().startswith("Examples:") for x in block):
            continue
        scenario_indent = re.match(r"^(\s*)", lines[start]).group(1)
        step_indent = scenario_indent + "    "
        new_lines = [""]
        if wanted_tag_text:
            new_lines.append(step_indent + wanted_tag_text)
        new_lines.extend([
            step_indent + "Examples:",
            step_indent + "  | col1 |",
            step_indent + "  | val1 |",
        ])
        inserts.append((end, new_lines))

    for idx, new_lines in reversed(inserts):
        lines[idx:idx] = new_lines

    if wanted_tag_text:
        i = 0
        while i < len(lines):
            if not lines[i].strip().startswith("Examples:"):
                i += 1
                continue
            indent = re.match(r"^(\s*)", lines[i]).group(1)
            j = i - 1
            while j >= 0 and lines[j].strip() == "":
                j -= 1
            tag_line = f"{indent}{wanted_tag_text}"
            if j >= 0 and lines[j].strip().startswith("@"):
                lines[j] = tag_line
            else:
                lines.insert(i, tag_line)
                i += 1
            i += 1

    return "\n".join(lines).rstrip()
