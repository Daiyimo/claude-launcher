import os
import subprocess
import sys
import pathlib
import shutil
import time

# 获取 exe 所在目录
if getattr(sys, 'frozen', False):
    base_path = pathlib.Path(sys.executable).parent
else:
    # 开发时从 src/ 目录获取项目根目录
    base_path = pathlib.Path(__file__).parent.parent

os.chdir(base_path)

# 清除 Claude Code 环境变量
env = os.environ.copy()
env.pop('CLAUDECODE', None)
env.pop('CLAUDE_API_KEY', None)

# 查找 claude 命令
claude_cmd = shutil.which('claude')
if not claude_cmd:
    possible_paths = [
        r"C:\Users\Dokkaebi\AppData\Local\Programs\Python\Python312\Scripts\claude.exe",
        r"C:\Users\Dokkaebi\AppData\Local\Programs\Python\Python312\Scripts\claude.cmd",
    ]
    for p in possible_paths:
        if pathlib.Path(p).exists():
            claude_cmd = p
            break

if not claude_cmd:
    # 尝试从 PATH 中找
    for path_dir in env.get('PATH', '').split(os.pathsep):
        for name in ['claude.cmd', 'claude.exe', 'claude.bat']:
            test_path = os.path.join(path_dir, name)
            if os.path.exists(test_path):
                claude_cmd = test_path
                break

# 先 cd 到目标目录，然后执行 claude
if claude_cmd:
    # 构建命令：在当前目录执行 claude
    cmd = f'cmd /k "cd /d {base_path} && claude --dangerously-skip-permissions"'
    subprocess.Popen(cmd, env=env, shell=True)
else:
    print("Error: claude command not found!")
    print("请确保 claude 已安装并添加到 PATH")
    time.sleep(5)
