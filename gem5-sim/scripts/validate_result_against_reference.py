#!/usr/bin/env python3
"""
Validate simulation output against software reference using saved inputs.

Expected artifacts in a run directory:
  - inputs.bin:  M(uint32), N(uint32), P(uint32), then A(M*N uint16), B(N*P uint16)
  - result.bin:  M(uint32), P(uint32), then C(M*P uint16)

LMUL mode computes reference C using rtl.numpy_lmul.lmul_numpy_matmul().
IEEE mode computes reference C using standard BF16->float matmul.
Both references are quantized with round-to-nearest-even BF16 (to match C model).
"""

import argparse
import struct
import sys
from pathlib import Path

import numpy as np


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parent.parent
if str(REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(REPO_ROOT))

try:
    from rtl.numpy_lmul import lmul_numpy_matmul
except Exception as exc:  # pragma: no cover - environment/import dependent
    print(f"Error importing rtl.numpy_lmul.lmul_numpy_matmul: {exc}", file=sys.stderr)
    print(f"  Repo root used for import: {REPO_ROOT}", file=sys.stderr)
    sys.exit(1)


def bf16_to_float_array(bits: np.ndarray) -> np.ndarray:
    u32 = bits.astype(np.uint32) << 16
    return u32.view(np.float32)


def float_to_bf16_rne(values: np.ndarray) -> np.ndarray:
    """Round float32 to BF16 using round-to-nearest-even."""
    f32 = np.asarray(values, dtype=np.float32)
    bits = f32.view(np.uint32)
    rounding = np.uint32(0x7FFF) + ((bits >> 16) & np.uint32(1))
    rounded = bits + rounding
    return (rounded >> 16).astype(np.uint16)


def load_inputs_bin(path: Path):
    data = path.read_bytes()
    if len(data) < 12:
        raise ValueError(f"File too short for inputs header: {path}")

    M, N, P = struct.unpack("<III", data[:12])
    a_elems = M * N
    b_elems = N * P
    expected = 12 + (a_elems + b_elems) * 2
    if len(data) < expected:
        raise ValueError(f"Inputs file truncated: {path} (need {expected} bytes, got {len(data)})")

    a_start = 12
    a_end = a_start + a_elems * 2
    b_end = a_end + b_elems * 2

    a = np.frombuffer(data[a_start:a_end], dtype=np.uint16).copy().reshape((M, N))
    b = np.frombuffer(data[a_end:b_end], dtype=np.uint16).copy().reshape((N, P))
    return M, N, P, a, b


def load_result_bin(path: Path):
    data = path.read_bytes()
    if len(data) < 8:
        raise ValueError(f"File too short for result header: {path}")

    M, P = struct.unpack("<II", data[:8])
    elems = M * P
    expected = 8 + elems * 2
    if len(data) < expected:
        raise ValueError(f"Result file truncated: {path} (need {expected} bytes, got {len(data)})")

    c = np.frombuffer(data[8:expected], dtype=np.uint16).copy().reshape((M, P))
    return M, P, c


def compute_reference_bf16(mode: str, a_bf16: np.ndarray, b_bf16: np.ndarray) -> np.ndarray:
    if mode == "lmul":
        ref_float = lmul_numpy_matmul(a_bf16, b_bf16).astype(np.float32, copy=False)
    elif mode == "ieee":
        a_float = bf16_to_float_array(a_bf16)
        b_float = bf16_to_float_array(b_bf16)
        ref_float = np.matmul(a_float.astype(np.float32), b_float.astype(np.float32)).astype(np.float32, copy=False)
    else:
        raise ValueError(f"Unsupported mode: {mode}")
    return float_to_bf16_rne(ref_float)


def accuracy_metrics(sim_bf16: np.ndarray, ref_bf16: np.ndarray):
    sim_float = bf16_to_float_array(sim_bf16)
    ref_float = bf16_to_float_array(ref_bf16)

    abs_error = np.abs(sim_float - ref_float)
    with np.errstate(divide="ignore", invalid="ignore"):
        rel_error = np.abs((sim_float - ref_float) / ref_float)
        rel_error = np.nan_to_num(rel_error, nan=0.0, posinf=0.0, neginf=0.0)

    bit_matches = (sim_bf16 == ref_bf16)
    max_idx = np.unravel_index(int(np.argmax(abs_error)), abs_error.shape)

    return {
        "num_elements": int(sim_bf16.size),
        "bit_matches": int(np.sum(bit_matches)),
        "bit_match_pct": float(100.0 * np.mean(bit_matches)),
        "max_abs_error": float(np.max(abs_error)),
        "mean_abs_error": float(np.mean(abs_error)),
        "max_rel_error": float(np.max(rel_error)),
        "rmse": float(np.sqrt(np.mean((sim_float - ref_float) ** 2))),
        "max_error_index": max_idx,
        "sim_bf16_at_max": int(sim_bf16[max_idx]),
        "ref_bf16_at_max": int(ref_bf16[max_idx]),
        "sim_float_at_max": float(sim_float[max_idx]),
        "ref_float_at_max": float(ref_float[max_idx]),
    }


def resolve_paths(run_arg: str, result_override: str, inputs_override: str):
    run_path = Path(run_arg)
    if run_path.is_dir():
        result_path = Path(result_override) if result_override else (run_path / "result.bin")
        inputs_path = Path(inputs_override) if inputs_override else (run_path / "inputs.bin")
    else:
        result_path = Path(result_override) if result_override else run_path
        inputs_path = Path(inputs_override) if inputs_override else (result_path.parent / "inputs.bin")
    return result_path, inputs_path


def print_report(mode: str, result_path: Path, inputs_path: Path, metrics: dict):
    print()
    print("=" * 68)
    print(f"Correctness: simulation output vs {mode.upper()} software reference")
    print("=" * 68)
    print(f"  Inputs: {inputs_path}")
    print(f"  Result: {result_path}")
    print(f"  Elements: {metrics['num_elements']}")
    print(
        f"  BF16 exact matches: {metrics['bit_matches']} "
        f"({metrics['bit_match_pct']:.2f}%)"
    )
    print("  Error metrics:")
    print(f"    Max absolute error:  {metrics['max_abs_error']:.6e}")
    print(f"    Mean absolute error: {metrics['mean_abs_error']:.6e}")
    print(f"    Max relative error:  {metrics['max_rel_error']:.6e}")
    print(f"    RMSE:                {metrics['rmse']:.6e}")
    print(
        "  Worst element: "
        f"idx={metrics['max_error_index']}, "
        f"sim_bf16=0x{metrics['sim_bf16_at_max']:04x}, "
        f"ref_bf16=0x{metrics['ref_bf16_at_max']:04x}, "
        f"sim={metrics['sim_float_at_max']:.6f}, "
        f"ref={metrics['ref_float_at_max']:.6f}"
    )

    if metrics["bit_match_pct"] >= 99.9:
        print("  Assessment: ✓ EXCELLENT")
    elif metrics["max_abs_error"] < 1e-2 and metrics["bit_match_pct"] >= 95.0:
        print("  Assessment: ✓ GOOD")
    elif metrics["max_abs_error"] < 0.1 and metrics["bit_match_pct"] >= 80.0:
        print("  Assessment: ⚠ ACCEPTABLE")
    else:
        print("  Assessment: ✗ POOR")
    print("=" * 68)
    print()


def main():
    parser = argparse.ArgumentParser(
        description="Validate simulation result.bin against software reference computed from inputs.bin"
    )
    parser.add_argument(
        "run",
        help="Run directory containing result.bin+inputs.bin, or direct path to result.bin",
    )
    parser.add_argument(
        "--mode",
        required=True,
        choices=["lmul", "ieee"],
        help="Reference model to use",
    )
    parser.add_argument("--result", default=None, help="Optional explicit path to result.bin")
    parser.add_argument("--inputs", default=None, help="Optional explicit path to inputs.bin")
    args = parser.parse_args()

    result_path, inputs_path = resolve_paths(args.run, args.result, args.inputs)
    if not result_path.is_file():
        print(f"Error: result file not found: {result_path}", file=sys.stderr)
        sys.exit(1)
    if not inputs_path.is_file():
        print(f"Error: inputs file not found: {inputs_path}", file=sys.stderr)
        sys.exit(1)

    try:
        M, N, P, A, B = load_inputs_bin(inputs_path)
        M_r, P_r, C_sim = load_result_bin(result_path)
    except Exception as exc:
        print(f"Error loading artifacts: {exc}", file=sys.stderr)
        sys.exit(1)

    if (M, P) != (M_r, P_r):
        print(
            f"Error: shape mismatch between inputs and result: "
            f"inputs imply {M}x{P}, result is {M_r}x{P_r}",
            file=sys.stderr,
        )
        sys.exit(1)

    C_ref = compute_reference_bf16(args.mode, A, B)
    metrics = accuracy_metrics(C_sim, C_ref)
    print_report(args.mode, result_path, inputs_path, metrics)

    if metrics["max_abs_error"] > 0.1 or metrics["bit_match_pct"] < 80.0:
        sys.exit(1)
    sys.exit(0)


if __name__ == "__main__":
    main()

