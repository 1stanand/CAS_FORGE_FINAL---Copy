@echo off
cd /d "%~dp0.."
echo.
echo ============================================================
echo  CASForge - Interactive Retrieval Test
echo  Type queries at the prompt. Type :help for commands.
echo ============================================================
echo.
python scripts/test_retrieval.py
