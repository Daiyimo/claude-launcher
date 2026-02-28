# Claude Launcher

一个轻量级脚本，用于在当前目录快速启动 Claude Code。

## 功能

- 双击 exe 即可在当前目录启动 Claude Code
- 自动切换到 exe 所在目录
- 执行 `claude --dangerously-skip-permissions`

## 使用方法

1. 将 `claude-run.exe` 复制到任意文件夹
2. 双击运行
3. 自动打开命令行窗口并启动 Claude Code

## 项目结构

```
claude-launcher/
├── src/                 # 源代码
│   └── run_claude.py
├── dist/                # 编译后的 exe
│   └── claude-run.exe
├── README.md
└── requirements.txt     # Python 依赖
```

## 构建

```bash
# 安装依赖
pip install pyinstaller

# 编译
pyinstaller --onefile --console --name claude-run src/run_claude.py
```

## 环境要求

- Python 3.8+
- Claude Code 已安装
