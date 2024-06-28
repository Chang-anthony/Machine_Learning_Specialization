@echo off

REM 创建虚拟环境
python -m venv .venv

REM 激活虚拟环境
call .venv\Scripts\activate

REM 安装 wheel 包
pip install wheel

REM 执行 setup.py 构建项目源码分发包
python setup.py sdist

REM 获取生成的最新的 tar.gz 文件路径
for /f "tokens=* delims=" %%a in ('dir /b /o:-d dist\machine_learning-*.tar.gz') do set "target=dist\%%a"

REM 安装最新生成的 tar.gz 包
pip install "%target%"

REM 退出虚拟环境
deactivate

REM 提示用户操作完成
@REM echo 操作完成。
