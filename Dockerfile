FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential make git \
    python3 python3-pip python3-venv python3-dev python3-tk \
    libffi-dev pkg-config \
    iverilog \
    openssh-client \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY requirements.txt .

RUN python3 -m pip install --upgrade pip setuptools wheel
RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash"]