@echo off
chcp 65001 >nul
rem ============================================================
rem  Ximalaya-Downloader-Next One-Click Launcher
rem  1) Activate the uv virtual environment (.venv, Python 3.12)
rem  2) xdl login  Open browser to log in (delete this line if already logged in)
rem  3) xdl web    Start the local WebUI at http://127.0.0.1:8787
rem ============================================================
cd /d D:\python_code\my_good_python\private\Ximalaya-Downloader-Next
call .venv\Scripts\activate.bat

echo [1/2] Opening browser for login, please complete login in the browser...
xdl login
if errorlevel 1 (
    echo [Notice] Login step returned an error, continuing to start WebUI...
)

echo.
echo [2/2] Starting local WebUI: http://127.0.0.1:8787
xdl web

echo.
echo WebUI has exited. Press any key to close this window...
pause >nul
