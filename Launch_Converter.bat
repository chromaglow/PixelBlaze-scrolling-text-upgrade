@echo off
title Pixelblaze Converter Launcher
echo ===================================================
echo Starting Pixelblaze Text Converter...
echo ===================================================
echo.
echo 1. Starting local web server on Port 8050...
echo 2. Opening your default browser...
echo.
echo [NOTE] Keep this window OPEN while using the tool.
echo You can close this window when you are done.
echo.

cd /d "%~dp0"
start "" "http://localhost:8050/text_converter.html"
python -m http.server 8050
pause
