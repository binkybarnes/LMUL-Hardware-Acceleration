# LMUL-Hardware-Acceleration

## Setup

Install Docker, clone the repository, and choose a setup method. The image is built from the root `Dockerfile` and includes dependencies for RTL/synthesis, notebooks, and **gem5-sim** (build tools for the gem5 accelerator workflow; see [gem5-sim/README.md](gem5-sim/README.md)).

### 1) VS Code

- Install Dev Containers extension
- Open a remote window → Reopen in dev container

### 2) Terminal

```bash
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

Contains reproducible notebooks (after container setup) for speed and accuracy analyses.

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
 
### Neural Network Tests (`NNs/`)

Contains reproducible notebooks (after container setup) for LMUL accuracy analyses within neural network classification related tasks.

- `NNs/lmul_mlp.mnist.ipynb`
  - Compares MLP accuracy performance on MNIST classification between LMUL and FP32 multiplication.
- `NNs/LSTM_test.ipynb`
  - Compares MLP accuracy performance on LSTM classification between LMUL and FP32 multiplication with numerous datasets, including FashionMNIST, MNIST, SeqMNIST, and KMNIST. Standardizes testing pipeline. 
- `NNs/LSTM_LMUL_LLM.ipynb`
  - Uses LMUL to generate characters regressively via LSTM.
- `NNs/model.py`
  - Definition for NanoGPT models using togglealble LMUL layers
- `NNs/train_nano.py`
  - Script to train NanoGPT model
- `NNs/eval_perplexity.py`
  - Script to evaluate perplexity across a validation dataset that doesn't require long lines of context.
- `NNs/eval_OWT.py`
  - Script to evaluate perplexity across a validation dataset that requires context.
- `transformerLMUL.ipynb`
  - Jupyter Notebook for testing NanoGPT scripts and perplexity analysis. 

### gem5 Full-System Simulation (`gem5-sim/`)

Complete gem5 integration for full-system simulation of LMUL accelerator in realistic system contexts.

**Purpose**: Evaluate LMUL accelerator performance with:
- Real CPU-accelerator interaction
- Memory hierarchy modeling
- System-level metrics (bandwidth, latency, cache effects)
- End-to-end application performance

**Key Components**:
- `gem5-sim/models/` - C++ device model for LMUL accelerator
- `gem5-sim/configs/` - System configurations (CPU + memory + accelerator)
- `gem5-sim/benchmarks/` - Test programs (matrix multiply, NN layers, etc.)
- `gem5-sim/scripts/` - Automation scripts for building and running

**Quick Start**: See [gem5-sim/README.md](gem5-sim/README.md) for prerequisites, setup, and workflow.

**Features**:
- Memory-mapped accelerator device
- Configurable PE array (4x4, 8x8, 16x16, etc.)
- Cycle-accurate timing model
- LMUL vs IEEE BF16 comparison
- Comprehensive statistics collection
