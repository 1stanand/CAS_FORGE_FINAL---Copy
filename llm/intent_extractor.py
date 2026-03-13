"""
llm/intent_extractor.py
-----------------------
Scope-aware intent planning for CASForge.

Primary output is a structured list of intent objects:
  {
    "id": "intent_001",
    "text": "...",
    "family": "validation",
    "inherit_story_scope": true,
    "lob_scope": null,
    "stage_scope": null
  }

This module remains backward-compatible with legacy list[str] intent callers
via coerce_intents() and intents_to_legacy_texts().
"""

from __future__ import annotations

import json
import logging
import os
import re
from difflib import SequenceMatcher
from typing import Any, Iterable, Optional

from jira.jira_parser import JiraStory
from llm import llm_client
from config.settings import LLM_TEMPERATURE, LLM_MAX_TOKENS

_log = logging.getLogger(__name__)

# Load prompt template from prompts/extract_intents.txt
_PROMPT_FILE = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
    "prompts", "extract_intents.txt"
)

_MIN_INTENTS_TARGET = 8
_MAX_INTENTS_TARGET = 14

_FAMILY_ALIASES = {
    "core": "positive",
    "positive": "positive",
    "happy_path": "positive",
    "negative": "negative",
    "rejection": "negative",
    "validation": "validation",
    "mandatory": "validation",
    "dependency": "dependency",
    "dependent": "dependency",
    "state": "state_movement",
    "state_transition": "state_movement",
    "state_movement": "state_movement",
    "movement": "state_movement",
    "persistence": "persistence",
    "save": "persistence",
    "data_combination": "data_combination",
    "combination": "data_combination",
    "boundary": "data_combination",
    "edge": "edge",
}

_VALID_FAMILIES = {
    "positive",
    "negative",
    "validation",
    "dependency",
    "state_movement",
    "persistence",
    "data_combination",
    "edge",
}

_INTENT_FILLER = {
    "the", "a", "an", "user", "users", "should", "be", "able", "to", "system",
    "screen", "page", "that", "this", "for", "of", "and", "or", "in", "on",
    "at", "with", "as", "is", "are", "can",
}

_GENERIC_PATTERNS = (
    "system should work",
    "system should function",
    "works correctly",
    "as expected",
)

_NEGATIVE_HINTS = {"reject", "rejection", "error", "invalid", "not allow", "prevent", "fail", "failed"}
_VALIDATION_HINTS = {"mandatory", "required", "validation", "validate", "field", "enable", "disable"}
_DEPENDENCY_HINTS = {"depend", "linked", "sync", "propagate", "based on", "derived from"}
_STATE_HINTS = {"move to next", "stage", "transition", "state"}
_PERSIST_HINTS = {"save", "reopen", "persist", "retained", "retains"}
_DATA_HINTS = {"combination", "boundary", "minimum", "maximum", "range", "multiple", "matrix"}
_EDGE_HINTS = {"edge", "blank", "null", "zero", "duplicate"}


def _load_prompt() -> tuple[str, str]:
    """Return (system_prompt, user_template) from the prompt file."""
    with open(_PROMPT_FILE, encoding="utf-8") as f:
        content = f.read()
    parts = content.split("\nUSER:\n", 1)
    if len(parts) != 2:
        raise ValueError(f"Prompt file {_PROMPT_FILE} must contain a 'USER:' section")
    system = parts[0].replace("SYSTEM:\n", "", 1).strip()
    user_template = parts[1].strip()
    return system, user_template


def extract_intents(
    story: JiraStory,
    story_scope_defaults: Optional[dict[str, Any]] = None,
) -> list[dict[str, Any]]:
    """
    Use the LLM to extract concise, structured, family-tagged intents.

    Returns:
        list[dict]: structured intents compatible with API IntentItem.
    """
    system_prompt, user_template = _load_prompt()

    # Truncate long fields to keep CPU LLM latency stable.
    _MAX_NEW_PROCESS = 1500
    _MAX_BIZ_SCENARIOS = 500
    _MAX_ACCEPTANCE = 800
    _MAX_KEY_UI = 400

    new_proc_text = story.new_process[:_MAX_NEW_PROCESS]
    if len(story.new_process) > _MAX_NEW_PROCESS:
        new_proc_text += "\n[...truncated for brevity...]"

    biz_text = story.business_scenarios[:_MAX_BIZ_SCENARIOS]
    if len(story.business_scenarios) > _MAX_BIZ_SCENARIOS:
        biz_text += "\n[...truncated...]"

    description_text = story.description or story.story_description

    new_block = (
        f"New Behavior to Implement:\n{new_proc_text}\n\n"
        if new_proc_text else ""
    )
    biz_block = (
        f"Business Scenarios / Exceptions:\n{biz_text}\n\n"
        if biz_text else ""
    )
    areas_block = (
        f"Impacted CAS Areas / Stages:\n{story.impacted_areas}\n\n"
        if story.impacted_areas else ""
    )
    key_ui_block = (
        f"Key UI Navigation:\n{story.key_ui_steps[:_MAX_KEY_UI]}\n\n"
        if story.key_ui_steps else ""
    )
    ac_text = story.acceptance_criteria[:_MAX_ACCEPTANCE]
    acceptance_criteria_block = (
        f"Acceptance Criteria (each criterion = one testable intent):\n{ac_text}\n\n"
        if ac_text else ""
    )

    user_prompt = user_template.format(
        key=story.issue_key,
        summary=story.summary,
        description=description_text,
        new_process_block=new_block,
        business_scenarios_block=biz_block,
        impacted_areas_block=areas_block,
        key_ui_block=key_ui_block,
        acceptance_criteria_block=acceptance_criteria_block,
    )

    _log.info("Extracting intents for %s ...", story.issue_key)
    raw = llm_client.chat(
        system_prompt=system_prompt,
        user_prompt=user_prompt,
        temperature=LLM_TEMPERATURE,
        max_tokens=max(LLM_MAX_TOKENS, 768),
    )
    _log.debug("LLM intent output:\n%s", raw)

    parsed_records = _parse_intent_records(raw)
    intents = _dedupe_records(_normalise_records(parsed_records))

    if len(intents) < _MIN_INTENTS_TARGET:
        extra = _expand_intents_for_coverage(story, intents)
        intents = _dedupe_records([*intents, *extra])

    intents = intents[:_MAX_INTENTS_TARGET]
    intents = _assign_ids_and_scope(intents, story_scope_defaults)
    _log.info("Extracted %d intents for %s", len(intents), story.issue_key)
    return intents


def _expand_intents_for_coverage(
    story: JiraStory,
    base_intents: list[dict[str, Any]],
) -> list[dict[str, Any]]:
    """
    If the first-pass extraction is too narrow, ask for additional
    non-duplicate intents focused on missing coverage categories.
    """
    if not base_intents:
        return []

    base_texts = [r.get("text", "") for r in base_intents if r.get("text")]

    context_parts = [
        f"Story: {story.issue_key} - {story.summary}",
        f"Description: {story.description or story.story_description}",
    ]
    if story.new_process:
        context_parts.append(f"New Process: {story.new_process[:1200]}")
    if story.business_scenarios:
        context_parts.append(f"Business Scenarios: {story.business_scenarios[:700]}")
    if story.impacted_areas:
        context_parts.append(f"Impacted Areas: {story.impacted_areas[:400]}")
    if story.acceptance_criteria:
        context_parts.append(f"Acceptance Criteria: {story.acceptance_criteria[:700]}")
    context = "\n".join(x for x in context_parts if x and x.strip())

    coverage_system = (
        "You are a CAS ATDD test planner.\n"
        "Generate only additional missing concise intents.\n"
        "Output must be a JSON array of objects with keys: text, family.\n"
        "No markdown."
    )
    coverage_user = (
        "Existing intents (already approved draft):\n"
        f"{json.dumps(base_texts, ensure_ascii=False)}\n\n"
        "Story context:\n"
        f"{context}\n\n"
        "Return only NEW intents that are not duplicates.\n"
        "Focus only on missing categories among: negative, validation, boundary/data-combination,\n"
        "state-transition or persistence, and dependent-entity effects.\n"
        "No setup-only intents (login/navigation).\n"
        "Use concrete CAS terms from the story.\n"
        "Intent text length target: 6 to 14 words, one behavior only.\n"
        "Return 0 to 6 additional intents as a JSON array."
    )

    try:
        raw = llm_client.chat(
            system_prompt=coverage_system,
            user_prompt=coverage_user,
            temperature=min(LLM_TEMPERATURE, 0.2),
            max_tokens=448,
        )
    except Exception as exc:
        _log.warning("Coverage intent expansion failed for %s: %s", story.issue_key, exc)
        return []

    return _dedupe_records(_normalise_records(_parse_intent_records(raw)))


def coerce_intents(
    intents: Optional[list[Any]],
    story_scope_defaults: Optional[dict[str, Any]] = None,
) -> list[dict[str, Any]]:
    """
    Backward-compatible converter:
      - list[str] -> structured intents
      - list[dict] -> normalised structured intents
    """
    if not intents:
        return []

    records: list[dict[str, Any]] = []
    for item in intents:
        if isinstance(item, str):
            records.append({"text": item})
            continue
        if isinstance(item, dict):
            if item.get("text"):
                records.append(item)
                continue
        text = getattr(item, "text", None)
        if text:
            records.append(
                {
                    "id": getattr(item, "id", None),
                    "text": text,
                    "family": getattr(item, "family", None),
                    "inherit_story_scope": getattr(item, "inherit_story_scope", True),
                    "lob_scope": getattr(item, "lob_scope", None),
                    "stage_scope": getattr(item, "stage_scope", None),
                }
            )

    records = _dedupe_records(_normalise_records(records))
    return _assign_ids_and_scope(records, story_scope_defaults)


def intents_to_legacy_texts(intents: Iterable[dict[str, Any] | str]) -> list[str]:
    out: list[str] = []
    for item in intents:
        if isinstance(item, str):
            text = item.strip()
        else:
            text = str(item.get("text", "")).strip()
        if text:
            out.append(text)
    return out


def normalise_story_scope_defaults(raw: Optional[dict[str, Any]]) -> dict[str, Any]:
    if not isinstance(raw, dict):
        return {
            "lob_scope": {"mode": "all", "values": []},
            "stage_scope": {"mode": "all", "values": []},
        }

    def _norm_scope(value: Any) -> dict[str, Any]:
        if not isinstance(value, dict):
            return {"mode": "all", "values": []}
        mode = str(value.get("mode", "all")).strip().lower()
        if mode not in {"all", "specific"}:
            mode = "all"
        values_raw = value.get("values", []) or []
        values: list[str] = []
        seen: set[str] = set()
        for v in values_raw:
            txt = str(v).strip()
            if not txt:
                continue
            k = txt.lower()
            if k in seen:
                continue
            seen.add(k)
            values.append(txt)
        return {"mode": mode, "values": values}

    lob = _norm_scope(raw.get("lob_scope"))
    stage = _norm_scope(raw.get("stage_scope"))
    return {"lob_scope": lob, "stage_scope": stage}


# -------------------------------------------------------------------------------
# Output parser - tolerant of LLM formatting quirks
# -------------------------------------------------------------------------------

def _strip_wrappers(raw: str) -> str:
    text = (raw or "").strip()
    text = re.sub(r"```[a-z]*\s*", "", text).strip()
    text = re.sub(r"```", "", text).strip()
    return text


def _parse_intent_records(raw: str) -> list[dict[str, Any]]:
    """
    Parse intent output into list[{"text":..., "family":...}] while accepting:
      - array of objects
      - array of strings
      - mixed arrays
    """
    text = _strip_wrappers(raw)
    if not text:
        return []

    def _coerce(obj: Any) -> list[dict[str, Any]]:
        if not isinstance(obj, list):
            return []
        out: list[dict[str, Any]] = []
        for item in obj:
            if isinstance(item, str):
                out.append({"text": item})
            elif isinstance(item, dict):
                txt = item.get("text") or item.get("intent") or item.get("name")
                fam = item.get("family")
                if txt:
                    out.append({"text": str(txt), "family": str(fam) if fam else None})
        return out

    try:
        parsed = json.loads(text)
        recs = _coerce(parsed)
        if recs:
            return recs
    except json.JSONDecodeError:
        pass

    m = re.search(r"\[.*\]", text, re.DOTALL)
    if m:
        array_text = re.sub(r",\s*\]", "]", m.group(0))
        try:
            parsed = json.loads(array_text)
            recs = _coerce(parsed)
            if recs:
                return recs
        except json.JSONDecodeError:
            pass

    return [{"text": t} for t in _parse_intents(raw)]


def _parse_intents(raw: str) -> list[str]:
    """
    Parse LLM output into a list of intent strings.

    Handles:
    - Clean JSON arrays
    - Arrays wrapped in markdown code fences  (```json ... ```)
    - Arrays with trailing commas
    - Plain quoted strings separated by newlines (fallback)
    """
    text = _strip_wrappers(raw)

    try:
        result = json.loads(text)
        if isinstance(result, list):
            return _clean_list(result)
    except json.JSONDecodeError:
        pass

    m = re.search(r"\[.*\]", text, re.DOTALL)
    if m:
        array_text = m.group(0)
        array_text = re.sub(r",\s*\]", "]", array_text)
        try:
            result = json.loads(array_text)
            if isinstance(result, list):
                return _clean_list(result)
        except json.JSONDecodeError:
            pass

    items = re.findall(r'"([^"]{15,})"', text)
    if items:
        return items

    _log.warning("Could not parse intents from LLM output:\n%s", raw)
    return []


def _clean_list(items: list[Any]) -> list[str]:
    return [str(i).strip() for i in items if str(i).strip()]


def _dedupe_intents(items: Iterable[str]) -> list[str]:
    out: list[str] = []
    seen: set[str] = set()
    for raw in items:
        text = str(raw).strip()
        if not text:
            continue
        if _is_setup_intent(text):
            continue
        key = re.sub(r"\s+", " ", text.lower())
        if key in seen:
            continue
        seen.add(key)
        out.append(text)
    return out


def _is_setup_intent(text: str) -> bool:
    t = re.sub(r"\s+", " ", text.lower()).strip()
    blocked_prefixes = (
        "user logs in",
        "user should be able to log in",
        "user should log in",
        "user navigates to",
        "user should be able to navigate",
        "user opens the screen",
    )
    return any(t.startswith(p) for p in blocked_prefixes)


def _normalise_records(records: Iterable[dict[str, Any]]) -> list[dict[str, Any]]:
    out: list[dict[str, Any]] = []
    for rec in records:
        raw_text = str((rec or {}).get("text", "")).strip()
        if not raw_text:
            continue
        text = _normalise_intent_text(raw_text)
        if not text:
            continue
        if _is_setup_intent(text):
            continue
        if _is_generic_intent(text):
            continue
        family = _normalise_family((rec or {}).get("family"), text)
        out.append({"text": text, "family": family})
    return out


def _dedupe_records(records: Iterable[dict[str, Any]]) -> list[dict[str, Any]]:
    out: list[dict[str, Any]] = []
    seen: set[str] = set()

    for rec in records:
        text = str(rec.get("text", "")).strip()
        if not text:
            continue
        key = re.sub(r"\s+", " ", text.lower())
        if key in seen:
            continue

        too_similar = False
        for existing in out:
            ratio = SequenceMatcher(None, key, existing["text"].lower()).ratio()
            if ratio >= 0.90:
                too_similar = True
                break
        if too_similar:
            continue

        seen.add(key)
        out.append({"text": text, "family": rec.get("family", "positive")})

    return out


def _assign_ids_and_scope(
    records: list[dict[str, Any]],
    story_scope_defaults: Optional[dict[str, Any]],
) -> list[dict[str, Any]]:
    _ = normalise_story_scope_defaults(story_scope_defaults)
    out: list[dict[str, Any]] = []
    for idx, rec in enumerate(records, 1):
        out.append(
            {
                "id": rec.get("id") or f"intent_{idx:03d}",
                "text": rec["text"],
                "family": rec.get("family", "positive"),
                "inherit_story_scope": bool(rec.get("inherit_story_scope", True)),
                "lob_scope": rec.get("lob_scope"),
                "stage_scope": rec.get("stage_scope"),
            }
        )
    return out


def _normalise_intent_text(text: str) -> str:
    t = re.sub(r"\s+", " ", text).strip()
    t = re.sub(r"^(user|system|the\s+\w+\s+screen)\s+should\s+be\s+able\s+to\s+", "", t, flags=re.I)
    t = re.sub(r"^(user|system|the\s+\w+\s+screen)\s+should\s+", "", t, flags=re.I)
    t = t.strip(" .-")
    if not t:
        return ""

    words = re.findall(r"[A-Za-z0-9']+", t)
    if len(words) > 14:
        compact: list[str] = []
        for w in words:
            lw = w.lower()
            if lw in _INTENT_FILLER and len(words) - len(compact) > 6:
                continue
            compact.append(w)
            if len(compact) >= 14:
                break
        if compact:
            t = " ".join(compact)

    return t


def _is_generic_intent(text: str) -> bool:
    low = text.lower()
    if any(p in low for p in _GENERIC_PATTERNS):
        return True
    words = [w for w in re.findall(r"[a-z0-9]+", low)]
    if len(words) < 4:
        return True
    return False


def _normalise_family(raw_family: Any, text: str) -> str:
    if raw_family is not None:
        key = str(raw_family).strip().lower().replace(" ", "_")
        fam = _FAMILY_ALIASES.get(key)
        if fam in _VALID_FAMILIES:
            return fam
    inferred = _infer_family(text)
    return inferred if inferred in _VALID_FAMILIES else "positive"


def _infer_family(text: str) -> str:
    low = text.lower()
    if any(h in low for h in _NEGATIVE_HINTS):
        return "negative"
    if any(h in low for h in _VALIDATION_HINTS):
        return "validation"
    if any(h in low for h in _DEPENDENCY_HINTS):
        return "dependency"
    if any(h in low for h in _PERSIST_HINTS):
        return "persistence"
    if any(h in low for h in _STATE_HINTS):
        return "state_movement"
    if any(h in low for h in _DATA_HINTS):
        return "data_combination"
    if any(h in low for h in _EDGE_HINTS):
        return "edge"
    return "positive"
