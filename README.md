# Claude Launcher

一个轻量级工具，用于在任意目录快速启动 Claude Code。

## 功能

- **`claude-launcher.bat`** — Windows 下双击或右键菜单直接启动，无需额外依赖
- **`claude-launcher.sh`** — macOS / Linux 下的等效脚本
- 支持传入目标路径参数，在指定目录启动
- 支持传入初始 prompt 参数，启动后自动执行
- 自动清除嵌套启动的环境变量干扰

## 用法

### Windows

```bat
REM 在当前目录启动
claude-launcher.bat

REM 在指定目录启动
claude-launcher.bat E:\project\my-app

REM 带初始 prompt 启动
claude-launcher.bat E:\project\my-app "帮我 review 代码"
```

**右键菜单集成**（可选）：将 bat 文件路径注册到注册表，实现文件夹右键"用 Claude 打开"。

### macOS / Linux

```bash
# 在当前目录启动
./claude-launcher.sh

# 在指定目录启动
./claude-launcher.sh ~/project/my-app

# 带初始 prompt 启动
./claude-launcher.sh ~/project/my-app "帮我 review 代码"
```

## 项目结构

```
claude-launcher/
├── claude-launcher.bat   # Windows 启动脚本
├── claude-launcher.sh    # macOS / Linux 启动脚本
└── README.md
```

## 环境要求

- Claude Code 已安装（`npm install -g @anthropic-ai/claude-code`）
- claude 命令已加入系统 PATH
