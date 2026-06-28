# Claude Launcher

一个轻量级工具，用于快速启动 Claude Code，自动跳过权限确认。

## 功能

- **`claude-launcher.bat`** — Windows 下双击或右键菜单直接启动
- **`claude-launcher.sh`** — macOS / Linux 下的等效脚本
- 自动设置 `CLAUDE_CODE_FORCE_FULL_LOGO` 环境变量，清除嵌套启动时的干扰
- 使用 `--permission-mode bypassPermissions --effort max` 启动，无需重复确认权限

## 用法

### Windows

```bat
claude-launcher.bat
```

**右键菜单集成**（可选）：将 bat 文件路径注册到注册表，实现文件夹右键"用 Claude 打开"。

### macOS / Linux

```bash
# 首次使用添加执行权限
chmod +x claude-launcher.sh

# 启动
./claude-launcher.sh
```

## 安装

```bash
git clone https://github.com/Daiyimo/claude-launcher.git
cd claude-launcher
chmod +x claude-launcher.sh
```

## 卸载

```bash
rm -rf claude-launcher
```

## 一键更新

```bash
git pull origin master
```

## 环境要求

- Claude Code 已安装（`npm install -g @anthropic-ai/claude-code`）
- `claude` 命令已加入系统 PATH
