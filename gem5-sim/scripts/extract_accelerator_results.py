#!/usr/bin/env python3
"""
Extract accelerator results from gem5 simulation log

Reads the accelerator's computed results and outputs them in a format
that can be compared with Python LMUL reference.

Usage:
    python3 extract_accelerator_results.py <simulation.log> [output_file]
    python3 extract_accelerator_results.py comparison_results/accelerator/simulation.log results.txt
"""

import sys
import re
import numpy as np

def parse_matrix_from_log(log_file):
    """Extract matrix data from simulation log"""
    # Look for matrix output in log
    # This is a placeholder - actual implementation depends on how results are logged
    matrix = []
    
    with open(log_file, 'r') as f:
        for line in f:
            # Look for numeric patterns that might be matrix elements
            # This is a simple parser - may need adjustment based on actual output format
            values = re.findall(r'[-+]?\d*\.?\d+', line)
            if len(values) > 2:  # Likely a matrix row
                try:
                    row = [float(v) for v in values]
                    matrix.append(row)
                except ValueError:
                    pass
    
    if not matrix:
        return None
    
    return np.array(matrix)

def extract_from_stats(stats_file):
    """Try to extract results from stats file"""
    # Stats file doesn't contain matrix data, but we can check for accelerator stats
    with open(stats_file, 'r') as f:
        for line in f:
            if 'lmul_accel' in line.lower():
                print(f"Found accelerator stat: {line.strip()}")

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 extract_accelerator_results.py <simulation.log> [output_file]")
        print("\nNote: This script is a placeholder.")
        print("      Actual implementation depends on how accelerator outputs results.")
        print("      Options:")
        print("      1. Read from result readback registers (REG_RESULT_DATA)")
        print("      2. Read from memory at cAddr after computation")
        print("      3. Parse from simulation log if benchmark outputs results")
        sys.exit(1)
    
    log_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else None
    
    print(f"Parsing simulation log: {log_file}")
    matrix = parse_matrix_from_log(log_file)
    
    if matrix is not None:
        print(f"Found matrix of shape: {matrix.shape}")
        if output_file:
            with open(output_file, 'w') as f:
                f.write(f"# Accelerator Output\n")
                f.write(f"# Matrix shape: {matrix.shape}\n\n")
                for i in range(matrix.shape[0]):
                    for j in range(matrix.shape[1]):
                        f.write(f"{matrix[i, j]:.6f} ")
                    f.write("\n")
            print(f"Results written to: {output_file}")
        else:
            print("Matrix:")
            print(matrix)
    else:
        print("No matrix data found in log file")
        print("This is expected if:")
        print("  1. Accelerator doesn't output results to log")
        print("  2. Results need to be read from memory/registers")
        print("  3. Benchmark failed before output")

if __name__ == '__main__':
    main()
