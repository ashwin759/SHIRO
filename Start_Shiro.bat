@echo off
title Shiro AI Launcher
color 0A
cls
echo.
echo  ============================================
echo      SHIRO AI  -  Local Studio Launcher
echo  ============================================
echo.

echo [1/2] Starting Ollama AI Engine...
start "Ollama" cmd /c "ollama serve"
timeout /t 3 /nobreak > NUL

echo [2/2] Starting Shiro AI Backend...
cd Backend
start "Shiro Backend" cmd /k ".\venv\Scripts\python main.py"
cd ..
timeout /t 4 /nobreak > NUL

echo.
echo  Opening Shiro AI in your browser...
start "" "http://localhost:8000"

echo.
echo  ============================================
echo   Shiro AI is running at:
echo   http://localhost:8000
echo  ============================================
echo.
echo  Keep this window open while using Shiro AI.
echo  Close it to stop all services.
echo.
pause
