import importlib
from pathlib import Path
import sys

from setuptools import setup, find_packages


def import_moudle(file: str):
    path = Path(file).resolve()
    if path.parent not in sys.path:
        sys.path.append(str(path.parent))

    return importlib.import_module(path.stem)


file_path = Path(__file__).parent / r"work"
version = import_moudle(file=file_path / "version.py")

long_description = ""

with open("README.md", "r") as f:
    long_description = f.read()

setup(
    name="machine_learning",
    version=version.__version__,
    packages=find_packages(),
    pachage_data={"maching_learning": ["*"]},
    entry_points={},
    long_description=long_description,
    long_description_content_type="text/markdown",
    python_requires=">=3.10",
    install_requires=[
        "numpy",
        "pandas",
        "matplotlib",
        "scipy",
        "rich",
        "scikit-learn",
        "plotly",
        "nbformat",
        "ipywidgets",
    ],
)
