#!/usr/bin/env python3
"""
Generate reference output using Python LMUL implementation

This script runs matrix multiplication using the Python LMUL implementation
and outputs the results in a format that can be compared with accelerator output.

Usage:
    python3 generate_python_reference.py <M> <N> <P> [output_file]
    python3 generate_python_reference.py 4 4 4 reference_output.txt
"""

import sys
import os
import numpy as np
from pathlib import Path

# Add project root to path
project_root = Path(__file__).parent.parent.parent
sys.path.insert(0, str(project_root))

from rtl.numpy_lmul import lmul_numpy_matmul
from utils.floats import float_to_bf16_array, bf16_to_float_array

def generate_reference(M, N, P, output_file=None, use_test_pattern=False):
    """Generate reference output using Python LMUL
    
    Args:
        M, N, P: Matrix dimensions
        output_file: Output file path (None = stdout)
        use_test_pattern: If True, use same pattern as accelerator (for verification)
    """
    
    if use_test_pattern:
        # Use same test pattern as accelerator (row/column-major pattern)
        A_float = np.zeros((M, N), dtype=np.float32)
        B_float = np.zeros((N, P), dtype=np.float32)
        
        for i in range(M):
            for j in range(N):
                A_float[i, j] = (float(i * N + j + 1) / 10.0)
        
        for i in range(N):
            for j in range(P):
                B_float[i, j] = (float(i * P + j + 1) / 10.0)
    else:
        # Generate test matrices (same as benchmark would use)
        np.random.seed(42)  # Fixed seed for reproducibility
        A_float = np.random.uniform(-10.0, 10.0, (M, N)).astype(np.float32)
        B_float = np.random.uniform(-10.0, 10.0, (N, P)).astype(np.float32)
    
    # Convert to BF16
    A_bf16 = float_to_bf16_array(A_float)
    B_bf16 = float_to_bf16_array(B_float)
    
    # Perform LMUL matrix multiplication
    C_bf16 = lmul_numpy_matmul(A_bf16, B_bf16)
    
    # Convert back to float for output
    C_float = bf16_to_float_array(C_bf16)
    
    # Output results
    if output_file:
        with open(output_file, 'w') as f:
            f.write(f"# Python LMUL Reference Output\n")
            f.write(f"# Matrix C = A * B where A is {M}x{N} and B is {N}x{P}\n")
            f.write(f"# Values are in float32 (converted from BF16)\n\n")
            f.write(f"Matrix C ({M}x{P}):\n")
            for i in range(M):
                for j in range(P):
                    f.write(f"{C_float[i, j]:.6f} ")
                f.write("\n")
    else:
        # Print to stdout
        print(f"# Python LMUL Reference Output")
        print(f"# Matrix C = A * B where A is {M}x{N} and B is {N}x{P}")
        print(f"# Values are in float32 (converted from BF16)\n")
        print(f"Matrix C ({M}x{P}):")
        for i in range(M):
            for j in range(P):
                print(f"{C_float[i, j]:.6f} ", end='')
            print()
    
    return C_float

def main():
    if len(sys.argv) < 4:
        print("Usage: python3 generate_python_reference.py <M> <N> <P> [output_file]")
        print("\nExample:")
        print("  python3 generate_python_reference.py 4 4 4 reference.txt")
        sys.exit(1)
    
    try:
        M = int(sys.argv[1])
        N = int(sys.argv[2])
        P = int(sys.argv[3])
        output_file = sys.argv[4] if len(sys.argv) > 4 else None
        use_pattern = '--pattern' in sys.argv or '--test-pattern' in sys.argv
    except ValueError:
        print("ERROR: M, N, P must be integers")
        sys.exit(1)
    
    print(f"Generating Python LMUL reference for {M}x{N} * {N}x{P} = {M}x{P}")
    if use_pattern:
        print("  Using test pattern (matches accelerator)")
    generate_reference(M, N, P, output_file, use_test_pattern=use_pattern)
    print("✓ Reference generated successfully")

if __name__ == '__main__':
    main()
