@echo off
setlocal

rem 清除嵌套启动的环境变量干扰
set CLAUDE_CODE_FORCE_FULL_LOGO=1

rem 解析参数：第一个为可选目标路径，第二个为可选初始 prompt
set "TARGET_DIR=%~1"
set "INITIAL_PROMPT=%~2"

if defined TARGET_DIR (
    pushd "%TARGET_DIR%"
)

if defined INITIAL_PROMPT (
    claude --permission-mode bypassPermissions --effort max "%INITIAL_PROMPT%"
) else (
    claude --permission-mode bypassPermissions --effort max
)

if defined TARGET_DIR (
    popd
)

endlocal
