@echo off
set CLAUDE_CODE_FORCE_FULL_LOGO=1

set "TARGET_DIR=%~1"
set "INITIAL_PROMPT=%~2"

if not "%TARGET_DIR%"=="" (
    cd /d "%TARGET_DIR%" || exit /b 1
)

if not "%INITIAL_PROMPT%"=="" (
    claude --permission-mode bypassPermissions --effort max --no-save-session "%INITIAL_PROMPT%"
) else (
    claude --permission-mode bypassPermissions --effort max --no-save-session
)

