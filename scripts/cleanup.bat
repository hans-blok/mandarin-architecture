@echo off
setlocal ENABLEDELAYEDEXPANSION

REM Cleanup script for .github and charters-agents
REM - In .github:
REM   - Keeps the folder "workflows" (including its contents)
REM   - Empties the folders "prompts" and "agents" but keeps the folders themselves
REM   - Deletes all other files and folders in .github
REM - Deletes all files in charters-agents
REM Run from the workspace root (c:\git\mandarin-architecture)

REM Determine script directory (assumed to be within the repo)
set SCRIPT_DIR=%~dp0
pushd "%SCRIPT_DIR%.." >nul 2>&1

if not exist .github (
    echo [.github] folder not found in %CD%
) else (
    echo Cleaning .github...
    pushd .github

    REM 1) Delete all files directly under .github
    for /F "delims=" %%F in ('dir /A-D /B') do (
        del /F /Q "%%F" >nul 2>&1
    )

    REM 2) Empty .github\prompts if it exists (keep the folder)
    if exist prompts (
        echo Emptying .github\prompts ...
        pushd prompts
        for /F "delims=" %%F in ('dir /A-D /B') do (
            del /F /Q "%%F" >nul 2>&1
        )
        for /F "delims=" %%D in ('dir /AD /B') do (
            rmdir /S /Q "%%D" >nul 2>&1
        )
        popd
    )

    REM 3) Empty .github\agents if it exists (keep the folder)
    if exist agents (
        echo Emptying .github\agents ...
        pushd agents
        for /F "delims=" %%F in ('dir /A-D /B') do (
            del /F /Q "%%F" >nul 2>&1
        )
        for /F "delims=" %%D in ('dir /AD /B') do (
            rmdir /S /Q "%%D" >nul 2>&1
        )
        popd
    )

    REM 4) Delete all other directories except workflows, prompts, and agents
    for /F "delims=" %%D in ('dir /AD /B') do (
        if /I not "%%D"=="workflows" if /I not "%%D"=="prompts" if /I not "%%D"=="agents" (
            echo Deleting folder .github\%%D
            rmdir /S /Q "%%D" >nul 2>&1
        )
    )

    popd
)

if not exist charters-agents (
    echo [charters-agents] folder not found in %CD%
) else (
    echo Cleaning files in charters-agents...
    pushd charters-agents
    for /F "delims=" %%F in ('dir /A-D /B') do (
        del /F /Q "%%F" >nul 2>&1
    )
    popd
)

popd >nul 2>&1

echo Cleanup completed.
endlocal
