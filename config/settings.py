"""
config/settings.py
------------------
Single source of truth for all CASForge configuration.

All other modules import from here — nobody reads os.getenv() directly.
Values are loaded from the .env file at the project root.

To change any setting: edit .env, no code changes required.
"""

import os
from dotenv import load_dotenv

_PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Load .env from project root (override=True so the env file always wins)
load_dotenv(os.path.join(_PROJECT_ROOT, ".env"), override=True)


# ── Database ──────────────────────────────────────────────────────────────────

DB_NAME     = os.getenv("DATABASE_NAME", "CASForge_F")
DB_USER     = os.getenv("DB_USER",       "postgres")
DB_PASSWORD = os.getenv("DB_PASSWORD",   "postgres")
DB_HOST     = os.getenv("DB_HOST",       "localhost")
DB_PORT     = int(os.getenv("DB_PORT",   "5432"))


# ── Paths ─────────────────────────────────────────────────────────────────────

# Root directory of the ATDD feature repo to parse.
# Must be set in .env — ingest will fail with a clear error if missing.
FEATURES_REPO_PATH: str = os.getenv("FEATURES_REPO_PATH", "")

# Directory where FAISS index files are stored.
# Defaults to <project_root>/index if not set in .env.
_faiss_env = os.getenv("FAISS_INDEX_DIR", "").strip()
FAISS_INDEX_DIR: str = _faiss_env if _faiss_env else os.path.join(_PROJECT_ROOT, "index")

# Path to db/schema.sql
SCHEMA_PATH: str = os.path.join(_PROJECT_ROOT, "db", "schema.sql")


# ── Embedding model ───────────────────────────────────────────────────────────

# Sentence-transformers model identifier (downloaded once, cached by HuggingFace).
EMBEDDING_MODEL: str = os.getenv("EMBEDDING_MODEL", "all-MiniLM-L6-v2")


# ── LLM (Llama / Mistral via llama-cpp-python) ────────────────────────────────

# Absolute path to the GGUF model file.  Must be set in .env before Phase 2 works.
LLM_MODEL_PATH: str = os.getenv("LLM_MODEL_PATH", "")

# Context window size in tokens.  4096 is safe on CPU-only; 8192 requires ~9GB RAM.
LLM_CONTEXT_LENGTH: int = int(os.getenv("LLM_CONTEXT_LENGTH", "4096"))

# Number of model layers to offload to GPU.  0 = CPU-only (safe default).
LLM_GPU_LAYERS: int = int(os.getenv("LLM_GPU_LAYERS", "0"))

# Sampling temperature.  Low value = more deterministic output (good for structured tasks).
LLM_TEMPERATURE: float = float(os.getenv("LLM_TEMPERATURE", "0.1"))

# Maximum tokens in the LLM response.
LLM_MAX_TOKENS: int = int(os.getenv("LLM_MAX_TOKENS", "2048"))

# Number of CPU threads for LLM inference.
# 0 = auto-detect (uses physical core count).
# Set to a lower number to leave headroom for other apps on RAM-limited machines.
LLM_NUM_THREADS: int = int(os.getenv("LLM_NUM_THREADS", "0"))


# ── Output ────────────────────────────────────────────────────────────────────

# Directory where generated .feature files are written.
_output_env = os.getenv("OUTPUT_DIR", "").strip()
OUTPUT_DIR: str = _output_env if _output_env else os.path.join(_PROJECT_ROOT, "output")
