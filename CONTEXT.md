# CONTEXT.md

## 核心概念
- **Claude Launcher** — 一个跨平台的轻量级启动器，在指定目录启动 Claude Code 并附带可选初始 prompt，避免手动 cd 和重复确认权限。

## 业务术语
- **bypassPermissions** — 跳过 Claude Code 的权限确认弹窗，适合信任的场景使用
- **effort max** — Claude Code 的最大推理努力等级
- **no-save-session** — 不保存会话到历史，适合一次性任务

## 架构决策
- 双平台脚本（.bat / .sh）保持参数签名一致：`<目标路径> <初始prompt>`
- 环境变量 `CLAUDE_CODE_FORCE_FULL_LOGO` 用于清除嵌套启动时的干扰
