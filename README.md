# Claude Launcher

一个轻量级工具，用于在任意目录快速启动 Claude Code。

## 功能

- **`claude-launcher.bat`** — Windows 启动脚本，支持传入目标路径和初始 prompt
- **`claude-launcher.sh`** — macOS / Linux 启动脚本，功能同上
- 使用 `--permission-mode bypassPermissions --effort max` 启动，无需重复确认权限
- 自动清除嵌套启动的环境变量干扰

## 安装

```bash
# 克隆仓库
git clone https://github.com/Daiyimo/claude-launcher.git
cd claude-launcher

# 给 sh 脚本添加执行权限（macOS / Linux）
chmod +x claude-launcher.sh
```

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

## 一键更新

```bash
git pull origin master
```

## 卸载

```bash
# 直接删除克隆的目录即可
rm -rf claude-launcher
```

## 环境要求

- Claude Code 已安装（`npm install -g @anthropic-ai/claude-code`）
- `claude` 命令已加入系统 PATH
