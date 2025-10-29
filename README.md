# LMUL-Hardware-Acceleration

## Environment Setup Commands
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

## VS Code

- Install Dev Containers extension

- Open a remote window -> Reopen in dev container