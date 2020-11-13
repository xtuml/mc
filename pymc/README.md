# pymc3020

### Install

```
pip install pymc3020
```

### Usage

```
Usage
=====
  python -m mc3020 [options] <model_path> [another_model_path..]

Options
=======
--help, -h                                        show this help message and exit
--pwd=WORKING_DIRECTORY, -d WORKING_DIRECTORY     code generation base folder          default: $PWD
--gendir=GEN_WORKSPACE, -g GEN_WORKSPACE          code generation workspace folder     default: $PWD/code_generation
--outdir=OUTPUT_DIRECTORY, -o OUTPUT_DIRECTORY    source output folder                 default: $PWD
--variant=VARIANT, -t VARIANT                     code generation dialect              default: c
```

Example:

```
python -m mc3020 -o ../src ../models                               # from gen folder of project
python -m mc3020 -t sysc -d ~/git/myproject/gen -o src ../models   # from a folder outside the project
```

### Package for release

```
python setup.py sdist
twine upload dist/*
```
