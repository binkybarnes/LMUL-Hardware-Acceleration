# LMUL-Hardware-Acceleration

## Setup

Install Docker, clone the repository, and choose a setup method

### 1) VS Code

- Install Dev Containers extension

- Open a remote window -> Reopen in dev container

### 2) Terminal
```
docker build -t lmul-dev .
docker run -it --rm \
  -p 8888:8888 \
  -v "$PWD":/workspace \
  -w /workspace \
  lmul-dev \
  jupyter lab --ip=0.0.0.0 --no-browser --NotebookApp.token='' --NotebookApp.password='' \
  --allow-root
```
Then open http://localhost:8888

## Repo Structure

### LMUL Modules (`rtl/`)
- `rtl/lmul_bf16.v`, `rtl/top_lmul.v`
  - Defines Verilog modules for LMUL and wrapper for simulations.
- `rtl/lmul_tester.py`
  - Defines modules for verilog -> python pipeline defining testbenches for iverilog simulations.
- `rtl/py_lmul.py`, `rtl/numpy_lmul.py`, `rtl/pytorch_lmul.py`
  - Defines both scalar and matrix multiplication (numpy/pytorch only) modules for software LMUL implementations.
- `rtl/simple_function.v`
  - Defines a simple function in verilog (f(x, y) = x + y + 1), used when setting up verilog -> python pipeline.

### Speed/Accuracy Unit Tests (`sim/`)

Contains reproducible notebooks (after container setup) for speed an accuracy analyses.

- `sim/lmul_accuracy_tester.ipynb`
  - Compares outputs between verilog and software to visualize consistency across implementations.
- `sim/lmul_speed_tester.ipynb`
  - Compares and visualizes runtime of verilog and software LMUL implementations to native IEEE.
- `sim/matrix_accuracy_tester.ipynb`
  - Compares consistency of outputs between LMUL matrix multiplication implemented in numpy/pytorch and native numpy/pytorch. 
- `sim/matrix_speed_tester.ipynb`
  - Compares runtime between LMUL matrix multiplication implemented in numpy/pytorch to native numpy/pytorch.
- `sim/test_simple.ipynb`
  - Verifies simple verilog -> python pipeline for simulation outputs.