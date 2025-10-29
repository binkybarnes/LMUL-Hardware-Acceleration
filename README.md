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
  jupyter lab --ip=0.0.0.0 --no-browser
```
Then open http://localhost:8888

