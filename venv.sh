#!/bin/bash

python3 -m venv .venv

source ".venv/bin/activate"

pip install wheel
python3 setup.py sdist

target=$(ls -t dist/machine_learning-*.tar.gz | head -1)
pip install "$target"

deactivate