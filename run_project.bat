@echo off
title MarkMirror: ResultRadar Rush Launcher
color 0B
echo ======================================================================
echo          MarkMirror: ResultRadar Rush - Localhost Deployment
echo ======================================================================
echo.
echo [1/3] Starting Backend Server (Flask + Scikit-Learn on port 5000)...
start "MarkMirror Backend" cmd /k "cd /d "%~dp0backend" && python app.py"

echo [2/3] Waiting for Backend initialization...
timeout /t 3 /nobreak >nul

echo [3/3] Starting Frontend Server (React + Vite on port 3000)...
start "MarkMirror Frontend" cmd /k "cd /d "%~dp0frontend" && npm.cmd run dev -- --host 127.0.0.1 --port 3000"

timeout /t 2 /nobreak >nul
echo.
echo ======================================================================
echo  Deployment Successful! Launching browser...
echo.
echo  Frontend URL: http://localhost:3000
echo  Backend API:  http://localhost:5000
echo ======================================================================
start http://localhost:3000
echo.
pause
