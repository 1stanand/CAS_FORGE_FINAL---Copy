# CASForge — How To Run

Everything runs from the project root: `D:\CAS_FORGE_FINAL`
All bat files are in `bat\` — double-click them or run from terminal.

---

## 1. First-Time Setup (do this once)

### Install dependencies
```
pip install -r requirements.txt
```
> Requires internet. After this, all packages are cached locally.
> The `all-MiniLM-L6-v2` embedding model (~90 MB) is downloaded from HuggingFace on first index build and cached at `C:\Users\<you>\.cache\huggingface\`.

### Setup database + schema
```
bat\setup.bat
```
Or: `python setup.py`

This: tests PostgreSQL connection → creates `CASForge_F` DB → drops and recreates all tables → runs ingest → builds FAISS index.

### Set LLM model path (Phase 2)
Edit `.env` and set:
```
LLM_MODEL_PATH=D:\YourModels\Meta-Llama-3-8B-Instruct-Q4_K_M.gguf
```

---

## 2. Day-to-Day (after every repo pull)

### Parse new / changed feature files (incremental)
```
bat\ingest_incremental.bat
```
Or: `python scripts/ingest.py && python scripts/build_index.py`

- Only processes files that are new or modified since last run.
- Deleted files are removed from DB automatically.
- Rebuilds FAISS vector index after parsing.

### Force full rebuild (wipe everything and re-parse)
```
bat\ingest_full_rebuild.bat
```
Or: `python scripts/ingest.py --full-rebuild && python scripts/build_index.py`

---

## 3. Test Retrieval — Interactive Terminal

```
bat\test_retrieval.bat
```
Or: `python scripts/test_retrieval.py`

| Command | What it does |
|---------|-------------|
| `<any text>` | Search for matching steps |
| `:top 10` | Show 10 results instead of default 5 |
| `:screen Committee` | Filter results to Committee screen only |
| `:keyword Then` | Filter to Then steps only |
| `:clear` | Remove all active filters |
| `:context off` | Hide surrounding scenario steps |
| `:help` | Show all commands |
| `:q` | Exit |

---

## 4. Generate Feature File from JIRA Story (Phase 2)

### Web UI (recommended)
```
bat\start_server.bat
```
Open `http://localhost:8000` in your browser.

UI flow:
1. Enter CSV path → Load stories
2. Select a story from the list
3. Click **Extract Intents** (LLM call — see timing notes below)
4. Review / edit the extracted intents
5. Click **Generate Feature** (LLM + retrieval — see timing notes below)
6. Review the feature file → Copy or Download

**Timing depends heavily on RAM:**

| Setup | Intent extraction | Feature assembly |
|-------|------------------|-----------------|
| 16 GB RAM, CPU only | ~2-4 min | ~5-8 min |
| 8 GB RAM, CPU only (8B model) | ~30-45 min | ~60-120 min |
| Any RAM, GPU with 8+ GB VRAM | < 1 min | ~1-2 min |

> **8 GB RAM warning**: The Meta-Llama-3-8B-Instruct model (~4.5 GB) consumes most of an 8 GB system. With VS Code, Chrome, and the DB all running, the system pages the model to disk. Each token takes 5-10 seconds. **For 8 GB machines: close Chrome, VS Code extensions, and any other heavy apps before running generation.** Or set `LLM_GPU_LAYERS=20` if you have a dedicated GPU.

### Command line
```
# Single story — intents only (fast check)
python scripts/generate_feature.py --csv SampleJira\sampleJira\HD_Bank_Epic.csv --story CAS-256008 --intents-only

# Single story — full feature file
python scripts/generate_feature.py --csv SampleJira\sampleJira\HD_Bank_Epic.csv --story CAS-256008

# All stories in a CSV
python scripts/generate_feature.py --csv SampleJira\sampleJira\HD_Bank_Epic.csv --all

# Custom output directory
python scripts/generate_feature.py --csv ... --story CAS-256008 --output D:\MyOutput
```

Generated files are saved to `output\` by default.

---

## 4.1 Quality Validation (recommended after changes)

### Run automated regression tests
```
python -m unittest discover -s test -v
```

### Evaluate retrieval accuracy (baseline + hard + negative)
```
python scripts/evaluate_retrieval.py --threshold 85
```

This command checks:
- baseline retrieval intent set
- hard typo/abbreviation queries
- keyword filter regressions
- negative/noise queries

### Validate generated feature files
```
python scripts/validate_generated_features.py --dir output
```

This verifies generated `.feature` files:
- start with `Feature:`
- use `Scenario Outline`
- include `Examples:` for each scenario
- use step text that exists in the repository catalogue

---

## 5. Check Database Contents

```sql
-- In psql or any SQL client:
SELECT * FROM v_feature_summary   ORDER BY step_count DESC LIMIT 20;
SELECT * FROM v_stage_coverage    ORDER BY scenario_count DESC;
SELECT * FROM v_screen_coverage   ORDER BY step_count DESC LIMIT 30;
SELECT * FROM v_parse_errors;
SELECT * FROM v_keyword_distribution;
```

Or via Python:
```
python -c "
from db.connection import get_conn, get_cursor
conn = get_conn()
with get_cursor(conn) as cur:
    cur.execute('SELECT COUNT(*) AS n FROM features');       print('Files:       ', cur.fetchone()['n'])
    cur.execute('SELECT COUNT(*) AS n FROM scenarios');      print('Scenarios:   ', cur.fetchone()['n'])
    cur.execute('SELECT COUNT(*) AS n FROM steps');          print('Steps:       ', cur.fetchone()['n'])
    cur.execute('SELECT COUNT(*) AS n FROM unique_steps');   print('Unique steps:', cur.fetchone()['n'])
conn.close()
"
```

---

## 6. Reference — All Scripts

| Command | Purpose |
|---------|---------|
| `bat\setup.bat` | First-time setup (DB + schema + ingest + index) |
| `bat\ingest_incremental.bat` | Incremental parse + index rebuild |
| `bat\ingest_full_rebuild.bat` | Full re-parse (drops all data) |
| `bat\test_retrieval.bat` | Interactive retrieval tester |
| `bat\start_server.bat` | Start web server (http://localhost:8000) |
| `bat\generate_feature.bat --csv <path> --story <key>` | Generate feature file (CLI) |
| `python db/connection.py` | Test DB connection |

---

## 7. Troubleshooting

**`ModuleNotFoundError: No module named 'faiss.swigfaiss_avx512'`**
Not an error. FAISS tries AVX512 first, falls back to AVX2. Retrieval works fine.

**`FileNotFoundError: FAISS index not found`**
Run `bat\ingest_incremental.bat` (or `python scripts/build_index.py`) first.

**`No steps found in DB`**
Run `bat\ingest_incremental.bat` first. Check `FEATURES_REPO_PATH` in `.env`.

**`Cannot connect to PostgreSQL`**
Check `.env` — `DB_USER`, `DB_PASSWORD`, `DB_HOST`, `DB_PORT` must match your PostgreSQL install.

**LLM not loading**
Check `LLM_MODEL_PATH` in `.env` — must be an absolute path to a `.gguf` file.
Run `pip install llama-cpp-python` if not installed.

**Generation is very slow (8GB RAM machine)**
The Meta-Llama-3-8B model is 4.5 GB. On an 8 GB machine with OS + VS Code running, it barely fits in RAM — the OS starts paging it to disk, making each token take 5-10 seconds instead of milliseconds.

Steps to speed up on 8 GB RAM:
1. **Close Chrome, extra VS Code windows, and other heavy apps** before running generation.
2. Check `LLM_NUM_THREADS` in `.env` — set to `4` for a 4-core CPU.
3. Set `LLM_CONTEXT_LENGTH=2048` for a shorter context window (less KV cache).
4. If you have a dedicated GPU: set `LLM_GPU_LAYERS=20` (or higher) to offload layers to VRAM — this eliminates the paging problem entirely.
5. Consider a smaller model: Llama 3.2 3B Q4_K_M (~2 GB) fits in 8 GB comfortably and is 3-5× faster on the same hardware.

**Recommended minimum for comfortable use: 16 GB RAM.**

**`DeviationPolicy.feature: Examples block in non-outline scenario`**
Expected warning from parser. Some files use `Scenario` instead of `Scenario Outline` with Examples. Parser stores them anyway.
