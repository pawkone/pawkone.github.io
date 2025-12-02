@echo off
cd /d "%~dp0"
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed or not in PATH.
    pause
    exit /b
)
start "" http://localhost:8000
python -m http.server 8000