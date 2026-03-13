"""
api/app.py
----------
CASForge FastAPI backend — Phase 3.

Serves both the REST API and the HTML frontend.

Start with:
    uvicorn api.app:app --reload --host 0.0.0.0 --port 8000
Or via bat:
    bat/start_server.bat

Endpoints
---------
GET  /                          → HTML frontend (index.html)
GET  /api/stories?csv=<path>    → list all stories in a CSV
GET  /api/story/<key>?csv=<path>→ full story detail
POST /api/intents               → extract intents (LLM call — slow)
POST /api/generate              → full pipeline: intents + feature file (LLM call — slow)
POST /api/generate/stream       → same as /generate but streams progress as SSE events
POST /api/search                → step retrieval search
GET  /api/output                → list generated .feature files
GET  /api/output/<filename>     → content of a specific generated file
"""

from __future__ import annotations

import logging
import os
import sys

_PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if _PROJECT_ROOT not in sys.path:
    sys.path.insert(0, _PROJECT_ROOT)

import json
from fastapi import FastAPI, HTTPException, Query
from fastapi.responses import FileResponse, HTMLResponse, StreamingResponse
from fastapi.staticfiles import StaticFiles
from typing import List

from api.models import (
    StoryRef, StoryInfo, StorySummary,
    IntentsResponse, GenerateRequest, GenerateResponse,
    SearchRequest, StepResult, OutputFile,
)
from config.settings import OUTPUT_DIR

logging.basicConfig(level=logging.INFO, format="%(levelname)s  %(name)s  %(message)s")
_log = logging.getLogger("casforge.api")

app = FastAPI(
    title="CASForge",
    description="JIRA → Gherkin .feature file generator for CAS ATDD",
    version="2.0",
)

# Serve static files from frontend/
_FRONTEND_DIR = os.path.join(_PROJECT_ROOT, "frontend")
if os.path.isdir(_FRONTEND_DIR):
    app.mount("/static", StaticFiles(directory=_FRONTEND_DIR), name="static")


# ─────────────────────────────────────────────────────────────────────────────
# Frontend
# ─────────────────────────────────────────────────────────────────────────────

@app.get("/", response_class=HTMLResponse, include_in_schema=False)
def index():
    html_path = os.path.join(_FRONTEND_DIR, "index.html")
    if not os.path.isfile(html_path):
        return HTMLResponse("<h1>frontend/index.html not found</h1>", status_code=404)
    return FileResponse(html_path)


# ─────────────────────────────────────────────────────────────────────────────
# Story management
# ─────────────────────────────────────────────────────────────────────────────

@app.get("/api/stories", response_model=List[StorySummary])
def list_stories(csv: str = Query(..., description="Absolute or relative path to JIRA CSV")):
    """List all stories in a JIRA CSV export."""
    from jira.jira_parser import load_all_stories
    csv_path = _resolve_path(csv)
    stories = load_all_stories(csv_path)
    return [StorySummary(key=s.issue_key, summary=s.summary, type=s.issue_type)
            for s in stories]


@app.get("/api/story/{key}", response_model=StoryInfo)
def get_story(key: str, csv: str = Query(...)):
    """Return full parsed details for a single story."""
    from jira.jira_parser import load_story
    csv_path = _resolve_path(csv)
    try:
        story = load_story(csv_path, key)
    except ValueError as e:
        raise HTTPException(status_code=404, detail=str(e))

    return StoryInfo(
        issue_key           = story.issue_key,
        summary             = story.summary,
        issue_type          = story.issue_type,
        description         = story.description,
        new_process         = story.new_process,
        current_process     = story.current_process,
        business_scenarios  = story.business_scenarios,
        impacted_areas      = story.impacted_areas,
        key_ui_steps        = story.key_ui_steps,
        acceptance_criteria = story.acceptance_criteria,
    )


# ─────────────────────────────────────────────────────────────────────────────
# LLM — intent extraction
# ─────────────────────────────────────────────────────────────────────────────

@app.post("/api/intents", response_model=IntentsResponse)
def extract_intents_endpoint(req: StoryRef):
    """
    Extract testable intents from a JIRA story using Llama.
    This is a slow operation (~1-3 minutes on CPU).
    """
    from jira.jira_parser import load_story
    from llm.intent_extractor import (
        extract_intents,
        intents_to_legacy_texts,
        normalise_story_scope_defaults,
    )

    csv_path = _resolve_path(req.csv_path)
    try:
        story = load_story(csv_path, req.story_key)
    except ValueError as e:
        raise HTTPException(status_code=404, detail=str(e))

    _log.info("Extracting intents for %s ...", req.story_key)
    defaults = normalise_story_scope_defaults(
        req.story_scope_defaults.model_dump() if req.story_scope_defaults else None
    )
    intents = extract_intents(story, story_scope_defaults=defaults)
    return IntentsResponse(
        story_key=story.issue_key,
        summary=story.summary,
        story_scope_defaults=defaults,
        intents=intents,
        legacy_intents=intents_to_legacy_texts(intents),
    )


# ─────────────────────────────────────────────────────────────────────────────
# LLM — full feature generation
# ─────────────────────────────────────────────────────────────────────────────

@app.post("/api/generate", response_model=GenerateResponse)
def generate_feature_endpoint(req: GenerateRequest):
    """
    Full pipeline: JIRA story → intents → step retrieval → .feature file.
    Writes the file to OUTPUT_DIR and returns the content.

    If intents are provided in the request body, intent extraction is skipped
    (useful when the user has edited the intents in the UI).
    """
    from jira.jira_parser import load_story
    from llm.intent_extractor import (
        extract_intents,
        coerce_intents,
        intents_to_legacy_texts,
        normalise_story_scope_defaults,
    )
    from llm.feature_assembler import assemble_feature_result
    from config.workflow import detect_stage, detect_sub_tags

    csv_path = _resolve_path(req.csv_path)
    try:
        story = load_story(csv_path, req.story_key)
    except ValueError as e:
        raise HTTPException(status_code=404, detail=str(e))

    defaults = normalise_story_scope_defaults(
        req.story_scope_defaults.model_dump() if req.story_scope_defaults else None
    )

    # Use provided intents or extract them
    intents = (
        coerce_intents(req.intents, story_scope_defaults=defaults)
        if req.intents
        else extract_intents(story, story_scope_defaults=defaults)
    )
    if not intents:
        raise HTTPException(status_code=422, detail="LLM returned no intents for this story.")

    _log.info("Assembling feature for %s with %d intents...", req.story_key, len(intents))
    assembly = assemble_feature_result(
        story=story,
        intents=intents,
        flow_type=req.flow_type,
        story_scope_defaults=defaults,
    )
    feature_text = assembly.feature_text

    # Persist to disk
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    safe_key  = req.story_key.replace("-", "_")
    out_path  = os.path.join(OUTPUT_DIR, f"{safe_key}.feature")
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(feature_text + "\n")

    # Stage detection for response metadata
    stage_q  = story.summary + " " + story.impacted_areas
    stage    = detect_stage(stage_q)
    sub_tags = detect_sub_tags(stage_q)

    return GenerateResponse(
        story_key=story.issue_key,
        summary=story.summary,
        flow_type=req.flow_type,
        story_scope_defaults=defaults,
        intents=intents,
        legacy_intents=intents_to_legacy_texts(intents),
        feature_text=feature_text,
        file_path=out_path,
        stage=stage,
        sub_tags=sub_tags,
        quality=assembly.quality,
        unresolved_steps=assembly.unresolved_steps,
    )


# ─────────────────────────────────────────────────────────────────────────────
# LLM — streaming generation (Server-Sent Events)
# ─────────────────────────────────────────────────────────────────────────────

@app.post("/api/generate/stream")
def generate_feature_stream(req: GenerateRequest):
    """
    Same as /api/generate but streams progress events as Server-Sent Events.

    Events emitted (each as a JSON string):
        { "event": "status",   "data": "Extracting intents..." }
        { "event": "intents",  "data": ["intent1", "intent2", ...] }
        { "event": "status",   "data": "Assembling feature file..." }
        { "event": "feature",  "data": { "text": "...", "stage": "...", "sub_tags": [...] } }
        { "event": "done",     "data": null }
        { "event": "error",    "data": "error message" }

    The UI polls this stream and updates the display progressively.
    """
    from jira.jira_parser import load_story
    from llm.intent_extractor import (
        extract_intents,
        coerce_intents,
        intents_to_legacy_texts,
        normalise_story_scope_defaults,
    )
    from llm.feature_assembler import assemble_feature_result
    from config.workflow import detect_stage, detect_sub_tags

    csv_path = _resolve_path(req.csv_path)

    def _event(event: str, data) -> str:
        return f"data: {json.dumps({'event': event, 'data': data})}\n\n"

    def _stream():
        defaults = normalise_story_scope_defaults(
            req.story_scope_defaults.model_dump() if req.story_scope_defaults else None
        )
        try:
            story = load_story(csv_path, req.story_key)
        except ValueError as e:
            yield _event("error", str(e))
            return

        # Step 1: intents
        if req.intents:
            intents = coerce_intents(req.intents, story_scope_defaults=defaults)
            yield _event("status", f"Using {len(intents)} provided intents...")
        else:
            yield _event("status", "Extracting test intents (LLM)...")
            intents = extract_intents(story, story_scope_defaults=defaults)
            if not intents:
                yield _event("error", "LLM returned no intents — check model output.")
                return

        yield _event("intents", intents)

        # Step 2: assemble feature
        yield _event("status", f"Assembling feature file from {len(intents)} intents (LLM + retrieval)...")
        try:
            assembly = assemble_feature_result(
                story=story,
                intents=intents,
                flow_type=req.flow_type,
                story_scope_defaults=defaults,
            )
            feature_text = assembly.feature_text
        except Exception as e:
            yield _event("error", f"Assembly failed: {e}")
            return

        # Save to disk
        os.makedirs(OUTPUT_DIR, exist_ok=True)
        safe_key = req.story_key.replace("-", "_")
        out_path = os.path.join(OUTPUT_DIR, f"{safe_key}.feature")
        with open(out_path, "w", encoding="utf-8") as f:
            f.write(feature_text + "\n")

        stage_q  = story.summary + " " + story.impacted_areas
        stage    = detect_stage(stage_q)
        sub_tags = detect_sub_tags(stage_q)

        yield _event("feature", {
            "text":      feature_text,
            "stage":     stage,
            "sub_tags":  sub_tags,
            "flow_type": req.flow_type,
            "file_path": out_path,
            "story_scope_defaults": defaults,
            "legacy_intents": intents_to_legacy_texts(intents),
            "quality": assembly.quality,
            "unresolved_steps": assembly.unresolved_steps,
        })
        yield _event("done", None)

    return StreamingResponse(_stream(), media_type="text/event-stream")


# ─────────────────────────────────────────────────────────────────────────────
# Retrieval search
# ─────────────────────────────────────────────────────────────────────────────

@app.post("/api/search", response_model=List[StepResult])
def search_steps(req: SearchRequest):
    """Search the step catalogue using hybrid retrieval."""
    from catalogue.retrieval import search

    results = search(
        query          = req.query,
        top_k          = req.top_k,
        screen_filter  = req.screen_filter,
        keyword_filter = req.keyword_filter,
    )

    return [
        StepResult(
            step_id        = r.get("step_id", 0),
            keyword        = r.get("keyword", ""),
            step_text      = r.get("step_text", ""),
            score          = r.get("score", 0.0),
            screen_context = r.get("screen_context"),
            scenario_title = r.get("scenario_title"),
            file_name      = r.get("file_name"),
            scenario_steps = r.get("scenario_steps", []),
        )
        for r in results
    ]


# ─────────────────────────────────────────────────────────────────────────────
# Output file management
# ─────────────────────────────────────────────────────────────────────────────

@app.get("/api/output")
def list_output_files():
    """List all generated .feature files."""
    if not os.path.isdir(OUTPUT_DIR):
        return []
    files = sorted(f for f in os.listdir(OUTPUT_DIR) if f.endswith(".feature"))
    return [
        {
            "filename":  f,
            "story_key": f.replace("_", "-").replace(".feature", ""),
            "size":      os.path.getsize(os.path.join(OUTPUT_DIR, f)),
        }
        for f in files
    ]


@app.get("/api/output/{filename}")
def get_output_file(filename: str):
    """Return the content of a generated .feature file."""
    if not filename.endswith(".feature"):
        raise HTTPException(status_code=400, detail="Only .feature files allowed")
    path = os.path.join(OUTPUT_DIR, filename)
    if not os.path.isfile(path):
        raise HTTPException(status_code=404, detail=f"File not found: {filename}")
    return {"filename": filename, "content": open(path, encoding="utf-8").read()}


# ─────────────────────────────────────────────────────────────────────────────
# Helpers
# ─────────────────────────────────────────────────────────────────────────────

def _resolve_path(path: str) -> str:
    """Resolve a path relative to the project root if not absolute."""
    if os.path.isabs(path):
        return path
    resolved = os.path.join(_PROJECT_ROOT, path)
    if not os.path.isfile(resolved):
        raise HTTPException(status_code=404, detail=f"CSV file not found: {path}")
    return resolved
