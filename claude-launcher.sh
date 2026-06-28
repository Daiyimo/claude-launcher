#!/usr/bin/env bash

# 清除嵌套启动的环境变量干扰
export CLAUDE_CODE_FORCE_FULL_LOGO=1

# 检查 claude 是否可用
if ! command -v claude &>/dev/null; then
    echo "错误: 未找到 claude 命令，请先安装 Claude Code" >&2
    exit 1
fi

# 解析参数：第一个为可选目标路径，第二个为可选初始 prompt
TARGET_DIR="${1:-}"
INITIAL_PROMPT="${2:-}"

if [[ -n "$TARGET_DIR" ]]; then
    cd "$TARGET_DIR" || { echo "错误: 无法切换到目录 $TARGET_DIR" >&2; exit 1; }
fi

if [[ -n "$INITIAL_PROMPT" ]]; then
    claude --permission-mode bypassPermissions --effort max --no-save-session "$INITIAL_PROMPT"
else
    claude --permission-mode bypassPermissions --effort max --no-save-session
fi
