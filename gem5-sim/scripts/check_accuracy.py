#!/usr/bin/env python3
"""
Accuracy checker for LMUL accelerator vs Python LMUL reference

Compares output matrices from LMUL accelerator and Python LMUL implementation
to verify correctness before using performance metrics.

Usage:
    python3 check_accuracy.py <accelerator_output.txt> <python_reference.txt>
    python3 check_accuracy.py results/accelerator_4x4.txt results/python_ref_4x4.txt
"""

import sys
import numpy as np
import re

def parse_matrix_file(filename):
    """Parse matrix from output file"""
    matrix = []
    with open(filename, 'r') as f:
        for line in f:
            # Look for numeric values
            values = re.findall(r'[-+]?\d*\.?\d+', line)
            if values:
                row = [float(v) for v in values]
                matrix.append(row)
    
    if not matrix:
        print(f"Warning: No matrix data found in {filename}")
        return None
    
    return np.array(matrix)

def calculate_accuracy_metrics(lmul_matrix, ieee_matrix):
    """Calculate accuracy metrics between two matrices"""
    if lmul_matrix.shape != ieee_matrix.shape:
        return {
            'error': f"Shape mismatch: LMUL {lmul_matrix.shape} vs IEEE {ieee_matrix.shape}"
        }
    
    # Element-wise absolute error
    abs_error = np.abs(lmul_matrix - ieee_matrix)
    
    # Relative error (avoid division by zero)
    with np.errstate(divide='ignore', invalid='ignore'):
        rel_error = np.abs((lmul_matrix - ieee_matrix) / ieee_matrix)
        rel_error = np.nan_to_num(rel_error, nan=0.0, posinf=0.0, neginf=0.0)
    
    # Statistics
    metrics = {
        'max_abs_error': np.max(abs_error),
        'mean_abs_error': np.mean(abs_error),
        'max_rel_error': np.max(rel_error),
        'mean_rel_error': np.mean(rel_error),
        'rmse': np.sqrt(np.mean((lmul_matrix - ieee_matrix) ** 2)),
        'max_error_element': np.unravel_index(np.argmax(abs_error), abs_error.shape),
        'max_error_value': abs_error[np.unravel_index(np.argmax(abs_error), abs_error.shape)],
        'num_elements': lmul_matrix.size,
        'matching_elements': np.sum(abs_error < 1e-6),
        'match_percentage': 100.0 * np.sum(abs_error < 1e-6) / lmul_matrix.size
    }
    
    return metrics

def print_accuracy_report(metrics):
    """Print formatted accuracy report"""
    print("\n" + "="*60)
    print("Accuracy Comparison: LMUL Accelerator vs Python LMUL Reference")
    print("="*60)
    
    if 'error' in metrics:
        print(f"ERROR: {metrics['error']}")
        return
    
    print(f"\nMatrix Statistics:")
    print(f"  Total elements: {metrics['num_elements']}")
    print(f"  Exactly matching: {metrics['matching_elements']} ({metrics['match_percentage']:.2f}%)")
    
    print(f"\nError Metrics:")
    print(f"  Max absolute error: {metrics['max_abs_error']:.6e}")
    print(f"  Mean absolute error: {metrics['mean_abs_error']:.6e}")
    print(f"  Max relative error: {metrics['max_rel_error']:.6e}")
    print(f"  Mean relative error: {metrics['mean_rel_error']:.6e}")
    print(f"  RMSE: {metrics['rmse']:.6e}")
    
    print(f"\nWorst Case:")
    print(f"  Location: {metrics['max_error_element']}")
    print(f"  Error: {metrics['max_error_value']:.6e}")
    
    # Accuracy assessment
    print(f"\nAccuracy Assessment:")
    if metrics['max_abs_error'] < 1e-3:
        print("  ✓ EXCELLENT: Max error < 0.001")
    elif metrics['max_abs_error'] < 1e-2:
        print("  ✓ GOOD: Max error < 0.01")
    elif metrics['max_abs_error'] < 0.1:
        print("  ⚠ ACCEPTABLE: Max error < 0.1")
    else:
        print("  ✗ POOR: Max error >= 0.1")
    
    if metrics['match_percentage'] > 99.9:
        print("  ✓ EXCELLENT: >99.9% elements match exactly")
    elif metrics['match_percentage'] > 95:
        print("  ✓ GOOD: >95% elements match exactly")
    elif metrics['match_percentage'] > 80:
        print("  ⚠ ACCEPTABLE: >80% elements match exactly")
    else:
        print("  ✗ POOR: <80% elements match exactly")
    
    print("="*60 + "\n")

def main():
    if len(sys.argv) < 3:
        print("Usage: python3 check_accuracy.py <accelerator_output.txt> <python_reference.txt>")
        print("\nExample:")
        print("  python3 check_accuracy.py results/accelerator_4x4.txt results/python_ref_4x4.txt")
        sys.exit(1)
    
    accelerator_file = sys.argv[1]
    python_file = sys.argv[2]
    
    print(f"Loading accelerator results from: {accelerator_file}")
    accelerator_matrix = parse_matrix_file(accelerator_file)
    
    print(f"Loading Python LMUL reference from: {python_file}")
    python_matrix = parse_matrix_file(python_file)
    
    if accelerator_matrix is None or python_matrix is None:
        print("ERROR: Failed to parse one or both matrices")
        sys.exit(1)
    
    print(f"Accelerator matrix shape: {accelerator_matrix.shape}")
    print(f"Python reference shape: {python_matrix.shape}")
    
    metrics = calculate_accuracy_metrics(accelerator_matrix, python_matrix)
    print_accuracy_report(metrics)
    
    # Exit with error code if accuracy is poor
    if 'error' in metrics:
        sys.exit(1)
    if metrics['max_abs_error'] > 0.1 or metrics['match_percentage'] < 80:
        print("WARNING: Accuracy is below acceptable threshold")
        sys.exit(1)

if __name__ == '__main__':
    main()
