"""
scripts/smoke_small_chunks.py
-----------------------------
Fast component-level smoke checks before expensive full JIRA -> feature runs.

Checks:
  1) tiny messy JIRA parsing cleanup
  2) optional tiny LLM intent extraction count sanity
  3) feature assembly with 2-3 intents for unordered/ordered structures
  4) Then + optional one And assertion rule
  5) optional NEW_STEP_NOT_IN_REPO notice visibility

Usage:
    python scripts/smoke_small_chunks.py
    python scripts/smoke_small_chunks.py --with-llm
"""

from __future__ import annotations

import argparse
import os
import re
import sys

_PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if _PROJECT_ROOT not in sys.path:
    sys.path.insert(0, _PROJECT_ROOT)

from jira.jira_parser import load_story
from llm.feature_assembler import assemble_feature

TINY_CLEAN = os.path.join(_PROJECT_ROOT, "test", "resources", "test-specs", "tiny_clean.csv")
TINY_MESSY = os.path.join(_PROJECT_ROOT, "test", "resources", "test-specs", "tiny_messy.csv")


def _ok(msg: str) -> None:
    print(f"[OK]   {msg}")


def _fail(msg: str) -> None:
    print(f"[FAIL] {msg}")


def _check_parser_cleanup() -> tuple[bool, str]:
    story = load_story(TINY_MESSY, "TINY-2")
    text = " ".join([
        story.description,
        story.new_process,
        story.business_scenarios,
        story.acceptance_criteria,
        story.story_description,
    ]).lower()
    blocked = ("{color", "{code", "http://")
    leaks = [b for b in blocked if b in text]
    if leaks:
        return False, f"markup leaks found in parsed text: {leaks}"
    return True, "messy jira parsed and cleaned"


def _extract_intents_llm() -> tuple[bool, list[str], str]:
    from llm.intent_extractor import extract_intents

    story = load_story(TINY_CLEAN, "TINY-1")
    intents = extract_intents(story)
    if len(intents) < 6:
        return False, intents, f"expected at least 6 intents, got {len(intents)}"
    return True, intents, f"intent count sanity passed ({len(intents)})"


def _default_intents() -> list[str]:
    return [
        "The Committee Decision screen should display Approved verdict when majority members approve",
        "The Committee Decision screen should display Rejected verdict when majority members reject",
        "The Committee Decision screen should keep verdict pending when no majority is reached",
    ]


def _count_scenarios(feature_text: str) -> int:
    return sum(1 for ln in feature_text.splitlines() if ln.lstrip().startswith("Scenario Outline:"))


def _check_assertion_rule(feature_text: str) -> tuple[bool, str]:
    lines = feature_text.splitlines()
    scenario_starts = [i for i, ln in enumerate(lines) if ln.lstrip().startswith("Scenario Outline:")]
    for i, start in enumerate(scenario_starts):
        end = scenario_starts[i + 1] if i + 1 < len(scenario_starts) else len(lines)
        block = lines[start:end]
        then_idx = [j for j, ln in enumerate(block) if re.match(r"^\s*Then\s+", ln)]
        if not then_idx:
            return False, f"scenario at line {start + 1} has no Then"
        j = then_idx[0] + 1
        and_after_then = 0
        while j < len(block) and re.match(r"^\s*And\s+", block[j]):
            and_after_then += 1
            j += 1
        if and_after_then > 1:
            return False, f"scenario at line {start + 1} has {and_after_then} And steps after Then"
    return True, "assertion rule passed"


def _check_assembled_feature(flow_type: str, intents: list[str]) -> tuple[bool, str]:
    story = load_story(TINY_CLEAN, "TINY-1")
    feature = assemble_feature(story, intents[:3], flow_type=flow_type)

    if "Feature:" not in feature:
        return False, f"{flow_type}: missing Feature header"
    if "Scenario Outline:" not in feature:
        return False, f"{flow_type}: missing Scenario Outline"

    sc_count = _count_scenarios(feature)
    if sc_count < 2:
        return False, f"{flow_type}: expected >=2 scenarios, got {sc_count}"

    ok, msg = _check_assertion_rule(feature)
    if not ok:
        return False, f"{flow_type}: {msg}"

    marker_note = "with NEW_STEP_NOT_IN_REPO notice" if "NEW_STEP_NOT_IN_REPO" in feature else "all steps grounded"
    return True, f"{flow_type}: {sc_count} scenarios, {msg}, {marker_note}"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--with-llm", action="store_true", help="Also run tiny LLM intent extraction check")
    args = parser.parse_args()

    failures = 0

    ok, msg = _check_parser_cleanup()
    if ok:
        _ok(msg)
    else:
        failures += 1
        _fail(msg)

    intents = _default_intents()
    if args.with_llm:
        ok, llm_intents, msg = _extract_intents_llm()
        if ok:
            _ok(msg)
            intents = llm_intents
        else:
            failures += 1
            _fail(msg)

    for flow in ("unordered", "ordered"):
        ok, msg = _check_assembled_feature(flow, intents)
        if ok:
            _ok(msg)
        else:
            failures += 1
            _fail(msg)

    print(f"\nSmall-chunk smoke result: {'PASS' if failures == 0 else 'FAIL'} (failures={failures})")
    return 0 if failures == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
