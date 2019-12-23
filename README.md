# Introduction

*initpkg* is a python package that creates a python package structure for you.

Check PyPI page: https://pypi.org/project/initpkg/


# Installation

```
pip install initpkg
```

# Getting started

In command line, run:
```
initpkg <your-package-name>
```

# Publish to PyPI
 - Bump version number in `__init__.py`
 - Push it to git repo
 - Rerun `setup.py` to build python wheels or egg file
 - Tag with the version number following the format of `v1.2.3`
 - Push the tag to git repo
 - Upload to PyPi with Twine command

In CLI (you have to bump the version and push to git manually first):

```bash
make publish version=<version>
```

