@echo off
cd /d "%~dp0.."
echo.
echo ============================================================
echo  CASForge - Generate Feature File from JIRA Story
echo  Usage: pass args after this script name
echo  Example: generate_feature.bat --csv SampleJira\... --story CAS-256008
echo  Example: generate_feature.bat --csv SampleJira\... --story CAS-256008 --intents-only
echo  Example: generate_feature.bat --csv SampleJira\... --all
echo ============================================================
echo.
python scripts/generate_feature.py %*
pause
