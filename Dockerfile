FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential make git \
    python3 python3-pip python3-venv python3-dev python3-tk \
    libffi-dev pkg-config \
    iverilog \
    openssh-client \
    yosys \
    opensta \
    m4 scons \
    zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev \
    libgoogle-perftools-dev \
    libboost-all-dev \
    gcc-arm-linux-gnueabi \
    binutils-gold \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY requirements.txt .

RUN python3 -m pip install --upgrade pip setuptools wheel
RUN pip install --no-cache-dir -r requirements.txt

# Create lib directory and download Nangate 45nm standard cell library
RUN mkdir -p lib && \
    python3 -c "import urllib.request; urllib.request.urlretrieve('https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/raw/master/flow/platforms/nangate45/lib/NangateOpenCellLibrary_typical.lib', 'lib/NangateOpenCellLibrary_typical.lib')"

CMD ["/bin/bash"]