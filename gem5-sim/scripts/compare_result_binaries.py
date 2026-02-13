#!/usr/bin/env python3
"""
Compare result matrices from LMUL and IEEE runs (correctness validation).

Reads the binary result files produced by the benchmark when run with an
output filename (argv[5]). Format: 4 bytes M (uint32), 4 bytes P (uint32),
then M*P uint16 BF16 values (row-major). Converts to float and compares.

Usage:
    python3 compare_result_binaries.py <lmul_result.bin> <ieee_result.bin>
    python3 compare_result_binaries.py lmul_vs_ieee_comparison/lmul/result.bin \\
        lmul_vs_ieee_comparison/ieee/result.bin

Or with directories (looks for result.bin in each):
    python3 compare_result_binaries.py lmul_vs_ieee_comparison/lmul lmul_vs_ieee_comparison/ieee
"""

import argparse
import struct
import sys
import numpy as np


def bf16_to_float(bits):
    """Convert BF16 bits (uint16) to float32. Matches C bf16_to_float."""
    u32 = int(bits) << 16
    return struct.unpack('<f', struct.pack('<I', u32))[0]


def load_result_bin(path):
    """Load matrix C from benchmark result.bin. Returns (M, P, np.float32 array)."""
    with open(path, 'rb') as f:
        data = f.read()
    if len(data) < 8:
        raise ValueError(f"File too short: {path}")
    M, P = struct.unpack('<II', data[:8])
    expected = 8 + M * P * 2
    if len(data) < expected:
        raise ValueError(f"File truncated: {path} (need {expected} bytes, got {len(data)})")
    bf16 = np.frombuffer(data[8:expected], dtype=np.uint16).reshape((M, P))
    # BF16 -> float32: same as C (bits << 16, reinterpret as float)
    u32 = bf16.astype(np.uint32) << 16
    float_vals = u32.view(np.float32)
    return M, P, float_vals


def calculate_accuracy_metrics(lmul_matrix, ieee_matrix):
    """Compute error metrics between LMUL and IEEE result matrices."""
    if lmul_matrix.shape != ieee_matrix.shape:
        return {
            'error': f"Shape mismatch: LMUL {lmul_matrix.shape} vs IEEE {ieee_matrix.shape}"
        }
    abs_error = np.abs(lmul_matrix - ieee_matrix)
    with np.errstate(divide='ignore', invalid='ignore'):
        rel_error = np.abs((lmul_matrix - ieee_matrix) / ieee_matrix)
        rel_error = np.nan_to_num(rel_error, nan=0.0, posinf=0.0, neginf=0.0)
    return {
        'max_abs_error': float(np.max(abs_error)),
        'mean_abs_error': float(np.mean(abs_error)),
        'max_rel_error': float(np.max(rel_error)),
        'mean_rel_error': float(np.mean(rel_error)),
        'rmse': float(np.sqrt(np.mean((lmul_matrix - ieee_matrix) ** 2))),
        'max_error_element': np.unravel_index(np.argmax(abs_error), abs_error.shape),
        'max_error_value': float(abs_error.flat[np.argmax(abs_error)]),
        'num_elements': int(lmul_matrix.size),
        'matching_elements': int(np.sum(abs_error < 1e-6)),
        'match_percentage': 100.0 * np.sum(abs_error < 1e-6) / lmul_matrix.size,
    }


def print_report(metrics, lmul_path, ieee_path):
    """Print correctness validation report."""
    print()
    print("=" * 60)
    print("Correctness: LMUL Accelerator vs IEEE (CPU) result matrices")
    print("=" * 60)
    print(f"  LMUL result: {lmul_path}")
    print(f"  IEEE result: {ieee_path}")
    if 'error' in metrics:
        print(f"  ERROR: {metrics['error']}")
        print("=" * 60)
        return
    print(f"\n  Matrix shape: {metrics['num_elements']} elements")
    print(f"  Exactly matching (|diff| < 1e-6): {metrics['matching_elements']} ({metrics['match_percentage']:.2f}%)")
    print("\n  Error metrics:")
    print(f"    Max absolute error:  {metrics['max_abs_error']:.6e}")
    print(f"    Mean absolute error: {metrics['mean_abs_error']:.6e}")
    print(f"    Max relative error:  {metrics['max_rel_error']:.6e}")
    print(f"    RMSE:                {metrics['rmse']:.6e}")
    print(f"    Worst element index:  {metrics['max_error_element']}")
    print("\n  Assessment:")
    if metrics['max_abs_error'] < 1e-3 and metrics['match_percentage'] > 99.9:
        print("    ✓ EXCELLENT: LMUL results match IEEE within tolerance")
    elif metrics['max_abs_error'] < 1e-2 and metrics['match_percentage'] > 95:
        print("    ✓ GOOD: Small differences (expected for BF16 / rounding)")
    elif metrics['max_abs_error'] < 0.1:
        print("    ⚠ ACCEPTABLE: Some difference; check BF16 semantics")
    else:
        print("    ✗ POOR: Large discrepancy – verify accelerator logic")
    print("=" * 60)
    print()


def main():
    parser = argparse.ArgumentParser(
        description="Compare LMUL and IEEE result.bin files for correctness",
        epilog="Example: python3 compare_result_binaries.py lmul/result.bin ieee/result.bin"
    )
    parser.add_argument("lmul", help="Path to LMUL result.bin (or directory containing result.bin)")
    parser.add_argument("ieee", help="Path to IEEE result.bin (or directory containing result.bin)")
    args = parser.parse_args()

    import os
    lmul_path = args.lmul
    ieee_path = args.ieee
    if os.path.isdir(lmul_path):
        lmul_path = os.path.join(lmul_path, "result.bin")
    if os.path.isdir(ieee_path):
        ieee_path = os.path.join(ieee_path, "result.bin")

    for p, name in [(lmul_path, "LMUL"), (ieee_path, "IEEE")]:
        if not os.path.isfile(p):
            print(f"Error: {name} result file not found: {p}", file=sys.stderr)
            print("  Run compare_lmul_vs_ieee.sh with matrix_multiply_no_printf (writes result.bin).", file=sys.stderr)
            sys.exit(1)

    try:
        M_l, P_l, lmul_matrix = load_result_bin(lmul_path)
        M_i, P_i, ieee_matrix = load_result_bin(ieee_path)
    except Exception as e:
        print(f"Error loading result files: {e}", file=sys.stderr)
        sys.exit(1)

    if (M_l, P_l) != (M_i, P_i):
        print(f"Error: shape mismatch LMUL {M_l}x{P_l} vs IEEE {M_i}x{P_i}", file=sys.stderr)
        sys.exit(1)

    metrics = calculate_accuracy_metrics(lmul_matrix, ieee_matrix)
    print_report(metrics, lmul_path, ieee_path)

    if 'error' in metrics:
        sys.exit(1)
    if metrics['max_abs_error'] > 0.1 or metrics['match_percentage'] < 80:
        print("WARNING: Correctness below threshold", file=sys.stderr)
        sys.exit(1)
    sys.exit(0)


if __name__ == "__main__":
    main()
