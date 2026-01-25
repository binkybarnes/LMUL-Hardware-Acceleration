#need the CUDA stuff
FROM nvidia/cuda:12.1.0-runtime-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

#install essentials and python
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential make git wget curl ca-certificates gnupg lsb-release software-properties-common \
    python3 python3-pip python3-venv python3-dev python3-tk \
    libffi-dev pkg-config \
    iverilog openssh-client yosys opensta \
 && rm -rf /var/lib/apt/lists/*

# Create lib directory and download Nangate 45nm standard cell library
RUN mkdir -p /workspace/lib && \
    python3 -c "import urllib.request; urllib.request.urlretrieve('https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/raw/master/flow/platforms/nangate45/lib/NangateOpenCellLibrary_typical.lib', '/workspace/lib/NangateOpenCellLibrary_typical.lib')"




#pip upgrade
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3
#PyTorch, CUDA 12.1 wheels
RUN pip install \
    torch==2.1.0+cu121 \
    torchvision==0.16.0+cu121 \
    torchaudio==2.1.0+cu121 \
    --index-url https://download.pytorch.org/whl/cu121

#installing from requirements.txt for python dependencies
WORKDIR /workspace
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash"]
