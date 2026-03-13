"""
scripts/ingest.py
-----------------
Incremental feature-file ingestion pipeline.

Repo path is read from FEATURES_REPO_PATH in .env — no CLI argument needed.

Usage
-----
Incremental (default — only new / changed / deleted files):
    python scripts/ingest.py

Full rebuild (drop + recreate schema, re-parse everything):
    python scripts/ingest.py --full-rebuild
"""

import argparse
import glob
import json
import logging
import os
import sys
import time

# ── Make project root importable ─────────────────────────────────────────────
_PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if _PROJECT_ROOT not in sys.path:
    sys.path.insert(0, _PROJECT_ROOT)

from db.connection import get_conn, get_cursor, run_sql_file
from gherkin_parser.feature_parser import parse_file
from config.settings import FEATURES_REPO_PATH, SCHEMA_PATH

# ─────────────────────────────────────────────────────────────────────────────
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s  %(levelname)-7s  %(message)s",
    datefmt="%H:%M:%S",
)
logger = logging.getLogger(__name__)

_SCHEMA_PATH = SCHEMA_PATH


# ─────────────────────────────────────────────────────────────────────────────
# DB helpers
# ─────────────────────────────────────────────────────────────────────────────

def db_fetch_all_mtimes(conn) -> dict:
    """Return {file_path: file_mtime} for every row in features table."""
    with get_cursor(conn) as cur:
        cur.execute("SELECT file_path, file_mtime FROM features")
        return {row["file_path"]: row["file_mtime"] for row in cur.fetchall()}


def db_delete_feature(conn, file_path: str) -> None:
    """Delete a features row (CASCADE removes all child rows)."""
    with get_cursor(conn) as cur:
        cur.execute("DELETE FROM features WHERE file_path = %s", (file_path,))
    conn.commit()


def db_insert_feature(conn, parsed: dict, mtime: float) -> None:
    """
    Insert a fully parsed feature into the DB.
    Uses a single transaction — rolls back on any error.
    """
    try:
        with get_cursor(conn) as cur:
            # ── features ─────────────────────────────────────────────────
            cur.execute(
                """
                INSERT INTO features
                    (file_path, file_name, feature_title,
                     file_annotations, file_dicts,
                     is_order_file, is_e2e_order, has_conflict,
                     parse_error, file_mtime)
                VALUES (%s,%s,%s, %s,%s::jsonb, %s,%s,%s, %s,%s)
                RETURNING id
                """,
                (
                    parsed["file_path"],
                    parsed["file_name"],
                    parsed["feature_title"],
                    parsed["file_annotations"],
                    json.dumps(parsed["file_dicts"]),
                    parsed["is_order_file"],
                    parsed["is_e2e_order"],
                    parsed["has_conflict"],
                    parsed["parse_error"],
                    mtime,
                )
            )
            feature_id = cur.fetchone()["id"]

            # ── scenarios ────────────────────────────────────────────────
            for sc in parsed["scenarios"]:
                cur.execute(
                    """
                    INSERT INTO scenarios
                        (feature_id, title, is_outline,
                         scenario_annotations, scenario_dicts, scenario_index)
                    VALUES (%s,%s,%s, %s,%s::jsonb,%s)
                    RETURNING id
                    """,
                    (
                        feature_id,
                        sc["title"],
                        sc["is_outline"],
                        sc["scenario_annotations"],
                        json.dumps(sc["scenario_dicts"]),
                        sc["scenario_index"],
                    )
                )
                scenario_id = cur.fetchone()["id"]

                # ── steps ─────────────────────────────────────────────
                if sc["steps"]:
                    # Build values list for executemany
                    step_rows = [
                        (
                            scenario_id,
                            s["keyword"],
                            s["step_text"],
                            s["step_position"],
                            s.get("screen_context"),
                        )
                        for s in sc["steps"]
                    ]
                    cur.executemany(
                        """
                        INSERT INTO steps
                            (scenario_id, keyword, step_text,
                             step_position, screen_context)
                        VALUES (%s,%s,%s,%s,%s)
                        """,
                        step_rows
                    )

                # ── example_blocks ────────────────────────────────────
                for eb in sc["example_blocks"]:
                    cur.execute(
                        """
                        INSERT INTO example_blocks
                            (scenario_id, block_annotations, block_dicts,
                             headers, rows, block_index)
                        VALUES (%s,%s,%s::jsonb,%s,%s::jsonb,%s)
                        """,
                        (
                            scenario_id,
                            eb["block_annotations"],
                            json.dumps(eb["block_dicts"]),
                            eb["headers"],
                            json.dumps(eb["rows"]),
                            eb["block_index"],
                        )
                    )

        conn.commit()

    except Exception:
        conn.rollback()
        raise


def db_refresh_unique_steps(conn) -> None:
    """Refresh the unique_steps materialised view after ingest."""
    with get_cursor(conn, dict_cursor=False) as cur:
        cur.execute("REFRESH MATERIALIZED VIEW unique_steps")
    conn.commit()


def db_total_counts(conn) -> dict:
    """Return dict with total row counts for the summary line."""
    with get_cursor(conn) as cur:
        cur.execute("SELECT COUNT(*) AS n FROM features")
        n_files = cur.fetchone()["n"]
        cur.execute("SELECT COUNT(*) AS n FROM scenarios")
        n_scen = cur.fetchone()["n"]
        cur.execute("SELECT COUNT(*) AS n FROM steps")
        n_steps = cur.fetchone()["n"]
    return {"files": n_files, "scenarios": n_scen, "steps": n_steps}


# ─────────────────────────────────────────────────────────────────────────────
# File discovery
# ─────────────────────────────────────────────────────────────────────────────

def find_feature_files(repo_path: str) -> list[str]:
    """Recursively find all .feature files under repo_path."""
    pattern = os.path.join(repo_path, "**", "*.feature")
    return [
        os.path.normpath(p)
        for p in glob.glob(pattern, recursive=True)
    ]


# ─────────────────────────────────────────────────────────────────────────────
# Main ingest logic
# ─────────────────────────────────────────────────────────────────────────────

def run_ingest(repo_path: str, full_rebuild: bool = False) -> None:
    repo_path = os.path.normpath(repo_path)
    if not os.path.isdir(repo_path):
        logger.error("repo-path does not exist: %s", repo_path)
        sys.exit(1)

    conn = get_conn()

    # ── Full rebuild: drop + recreate schema ─────────────────────────────
    if full_rebuild:
        logger.info("Full rebuild requested — running schema.sql ...")
        run_sql_file(_SCHEMA_PATH)
        logger.info("Schema recreated.")

    # ── Discover files ───────────────────────────────────────────────────
    logger.info("Scanning %s ...", repo_path)
    disk_files_list = find_feature_files(repo_path)
    disk_files = set(disk_files_list)
    logger.info("Found %d .feature files.", len(disk_files))

    # ── Load existing mtimes from DB ─────────────────────────────────────
    existing = db_fetch_all_mtimes(conn)

    # ── Categorise ───────────────────────────────────────────────────────
    new_files:     list[str] = []
    changed_files: list[str] = []
    deleted_files: list[str] = []

    for fpath in disk_files:
        mtime = os.path.getmtime(fpath)
        if fpath not in existing:
            new_files.append(fpath)
        elif abs(existing[fpath] - mtime) > 0.001:   # float tolerance
            changed_files.append(fpath)
        # else: unchanged — skip

    for fpath in existing:
        if fpath not in disk_files:
            deleted_files.append(fpath)

    unchanged_count = len(disk_files) - len(new_files) - len(changed_files)

    logger.info(
        "  New: %d  |  Changed: %d  |  Unchanged: %d (skipped)  |  Deleted: %d",
        len(new_files), len(changed_files), unchanged_count, len(deleted_files)
    )

    # ── Delete removed files from DB ─────────────────────────────────────
    for fpath in deleted_files:
        logger.debug("Removing deleted file from DB: %s", fpath)
        db_delete_feature(conn, fpath)
    if deleted_files:
        logger.info("Removed %d deleted files from DB.", len(deleted_files))

    # ── Delete changed files (will be re-inserted) ────────────────────────
    for fpath in changed_files:
        db_delete_feature(conn, fpath)

    # ── Parse and insert new + changed ───────────────────────────────────
    to_parse = new_files + changed_files
    if not to_parse:
        logger.info("Nothing to parse — catalogue is up to date.")
    else:
        logger.info("Parsing %d file(s) ...", len(to_parse))
        n_ok    = 0
        n_error = 0
        n_scenarios = 0
        n_steps     = 0

        t0 = time.perf_counter()
        for i, fpath in enumerate(to_parse, 1):
            mtime = os.path.getmtime(fpath)
            parsed = parse_file(fpath)

            if parsed["parse_error"]:
                logger.warning("[%d/%d] PARSE ERROR %s — %s",
                               i, len(to_parse), os.path.basename(fpath), parsed["parse_error"])
                n_error += 1
                # Still insert the features row so we track the file
                try:
                    db_insert_feature(conn, {**parsed, "scenarios": []}, mtime)
                except Exception as exc:
                    logger.error("DB insert failed for %s: %s", fpath, exc)
                continue

            try:
                db_insert_feature(conn, parsed, mtime)
                n_ok       += 1
                n_scenarios += len(parsed["scenarios"])
                n_steps     += sum(len(sc["steps"]) for sc in parsed["scenarios"])
            except Exception as exc:
                logger.error("[%d/%d] DB INSERT FAILED %s — %s",
                             i, len(to_parse), os.path.basename(fpath), exc)
                n_error += 1

            if i % 100 == 0:
                elapsed = time.perf_counter() - t0
                logger.info(
                    "  Progress: %d/%d  (%.0fs elapsed)", i, len(to_parse), elapsed
                )

        elapsed = time.perf_counter() - t0
        logger.info(
            "Parsed %d file(s) in %.1fs  |  OK: %d  Errors: %d  "
            "Scenarios: +%d  Steps: +%d",
            len(to_parse), elapsed, n_ok, n_error, n_scenarios, n_steps
        )

    # ── Refresh materialised view ─────────────────────────────────────────
    logger.info("Refreshing unique_steps materialised view ...")
    db_refresh_unique_steps(conn)

    # ── Summary ───────────────────────────────────────────────────────────
    totals = db_total_counts(conn)
    logger.info(
        "Done. DB totals — Files: %d  Scenarios: %d  Steps: %d",
        totals["files"], totals["scenarios"], totals["steps"]
    )
    logger.info(
        "Next step: python scripts/build_index.py   (to rebuild vector index)"
    )

    conn.close()


# ─────────────────────────────────────────────────────────────────────────────
# CLI entry point
# ─────────────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(
        description="CASForge — ingest ATDD feature files into PostgreSQL"
    )
    parser.add_argument(
        "--full-rebuild", action="store_true",
        help="Drop + recreate schema, then re-parse all files"
    )
    args = parser.parse_args()

    if not FEATURES_REPO_PATH:
        logger.error(
            "FEATURES_REPO_PATH is not set in .env — "
            "add it and point it to your ATDD repo root."
        )
        sys.exit(1)

    run_ingest(FEATURES_REPO_PATH, full_rebuild=args.full_rebuild)


if __name__ == "__main__":
    main()
