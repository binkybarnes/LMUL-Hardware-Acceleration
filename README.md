# LMUL-Hardware-Acceleration

## Environment Setup Commands
```
docker build -t lmul-dev .

docker run -it --rm -v "$PWD":/workspace -w /workspace lmul-dev
```

## VS Code

- Install Dev Containers extension

- Reopen in dev container

- Make sure Python + Jupyter extensions are installed in the container

- You may also be prompted with an ipykernel installation before running cells