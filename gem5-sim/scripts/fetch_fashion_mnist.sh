#!/usr/bin/env bash
set -euo pipefail

# Fetch and prepare the Fashion-MNIST dataset for use by gem5 benchmarks.
#
# Default destination:
#   gem5-sim/datasets/fashion-mnist
#
# Usage:
#   ./gem5-sim/scripts/fetch_fashion_mnist.sh
#   ./gem5-sim/scripts/fetch_fashion_mnist.sh /path/on/shared/fs/fashion-mnist
#
# Outputs (in DEST_DIR):
#   - train-images-idx3-ubyte.gz, train-labels-idx1-ubyte.gz, t10k-*.gz
#   - Decompressed *.ubyte files (IDX format)
#   - fashion-mnist.npz (NumPy arrays) for convenience

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GEM5_SIM_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

DEST_DIR="${1:-${FASHION_MNIST_DIR:-${GEM5_SIM_ROOT}/datasets/fashion-mnist}}"
BASE_URL="${FASHION_MNIST_BASE_URL:-https://fashion-mnist.s3-website.eu-central-1.amazonaws.com}"

mkdir -p "${DEST_DIR}"

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "ERROR: Missing required command: $1" >&2
    exit 1
  }
}

need_cmd python3
need_cmd gzip

if command -v curl >/dev/null 2>&1; then
  DL=(curl -fsSL)
elif command -v wget >/dev/null 2>&1; then
  DL=(wget -qO-)
else
  echo "ERROR: Need either curl or wget to download files." >&2
  exit 1
fi

md5_of_file() {
  local f="$1"
  if command -v md5sum >/dev/null 2>&1; then
    md5sum "$f" | awk '{print $1}'
  elif command -v md5 >/dev/null 2>&1; then
    # macOS fallback
    md5 -q "$f"
  else
    echo "ERROR: Need md5sum (Linux) or md5 (macOS) for integrity checks." >&2
    exit 1
  fi
}

fetch_one() {
  local name="$1"
  local expected_md5="$2"
  local url="${BASE_URL}/${name}"
  local out="${DEST_DIR}/${name}"

  if [[ -f "${out}" ]]; then
    echo "Found ${name}"
  else
    echo "Downloading ${name}"
    "${DL[@]}" "${url}" > "${out}"
  fi

  local got
  got="$(md5_of_file "${out}")"
  if [[ "${got}" != "${expected_md5}" ]]; then
    echo "ERROR: MD5 mismatch for ${name}" >&2
    echo "  expected: ${expected_md5}" >&2
    echo "  got:      ${got}" >&2
    echo "  url:      ${url}" >&2
    echo "Tip: delete the file and rerun: rm -f \"${out}\"" >&2
    exit 1
  fi
}

# Official MD5s from the Fashion-MNIST README:
# https://github.com/zalandoresearch/fashion-mnist
fetch_one "train-images-idx3-ubyte.gz" "8d4fb7e6c68d591d4c3dfef9ec88bf0d"
fetch_one "train-labels-idx1-ubyte.gz" "25c81989df183df01b3e8a0aad5dffbe"
fetch_one "t10k-images-idx3-ubyte.gz"  "bef4ecab320f06d8554ea6380940ec79"
fetch_one "t10k-labels-idx1-ubyte.gz"  "bb300cfdad3c16e7a12a480ee83cd310"

decompress_keep_gz() {
  local gz="$1"
  local out="${gz%.gz}"
  if [[ -f "${out}" ]]; then
    return 0
  fi

  # gunzip -k is available on Ubuntu 22.04; keep a fallback just in case.
  if gunzip -k "${gz}" >/dev/null 2>&1; then
    gunzip -k "${gz}"
  else
    cp -f "${gz}" "${gz}.tmp"
    gunzip -f "${gz}.tmp"
    mv -f "${gz%.gz}.tmp" "${out}"
  fi
}

echo "Decompressing IDX files (keeping .gz)"
decompress_keep_gz "${DEST_DIR}/train-images-idx3-ubyte.gz"
decompress_keep_gz "${DEST_DIR}/train-labels-idx1-ubyte.gz"
decompress_keep_gz "${DEST_DIR}/t10k-images-idx3-ubyte.gz"
decompress_keep_gz "${DEST_DIR}/t10k-labels-idx1-ubyte.gz"

echo "Creating ${DEST_DIR}/fashion-mnist.npz"
DEST_DIR="${DEST_DIR}" python3 - <<'PY'
import os
import struct
import numpy as np

dest_dir = os.environ.get("DEST_DIR")
if not dest_dir:
    # script passes via environment below
    raise SystemExit("DEST_DIR not set")

def read_idx(path: str):
    with open(path, "rb") as f:
        magic, = struct.unpack(">I", f.read(4))
        if magic == 2049:  # labels
            n, = struct.unpack(">I", f.read(4))
            data = np.frombuffer(f.read(n), dtype=np.uint8)
            return data
        if magic == 2051:  # images
            n, rows, cols = struct.unpack(">III", f.read(12))
            data = np.frombuffer(f.read(n * rows * cols), dtype=np.uint8)
            return data.reshape((n, rows, cols))
        raise ValueError(f"Unknown IDX magic {magic} for {path}")

train_images = read_idx(os.path.join(dest_dir, "train-images-idx3-ubyte"))
train_labels = read_idx(os.path.join(dest_dir, "train-labels-idx1-ubyte"))
test_images  = read_idx(os.path.join(dest_dir, "t10k-images-idx3-ubyte"))
test_labels  = read_idx(os.path.join(dest_dir, "t10k-labels-idx1-ubyte"))

np.savez_compressed(
    os.path.join(dest_dir, "fashion-mnist.npz"),
    train_images=train_images,
    train_labels=train_labels,
    test_images=test_images,
    test_labels=test_labels,
)
PY

echo
echo "Done."
echo "Dataset directory: ${DEST_DIR}"
echo "TIP (Expanse): put this on a shared filesystem (e.g., \$PROJECT or \$SCRATCH) and reuse it across runs."

