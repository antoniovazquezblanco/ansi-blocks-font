@echo off

REM Get script dir
set PRJDIR=%~dp0

REM Possible font forge locations
set "PATH=C:\Program Files\FontForgeBuilds;C:\Program Files\FontForgeBuilds\bin;%PATH:"=%"
set "PATH=C:\Program Files (x86)\FontForgeBuilds;C:\Program Files (x86)\FontForgeBuilds\bin;%PATH:"=%"

REM Check if we can find the executable
where fontforge.exe >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Could not locate fontforge executable.
    pause
    exit
)

REM Check for the output directory
if not exist "%PRJDIR%\dist" mkdir "%PRJDIR%\dist"

REM Run the release script
fontforge.exe -script release.py

pause