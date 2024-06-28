@echo off

REM create virtual environment
python -m venv .venv

REM activate.bat virtual environment
call .venv\Scripts\activate.bat

REM 安装 wheel 包 and setuptools package
pip install wheel setuptools

python -m pip install --upgrade pip

REM use setup.py to install package
python setup.py install

deactivate


