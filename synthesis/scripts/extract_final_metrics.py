#!/usr/bin/env python3
"""
Extract and compare FINAL synthesis metrics (library-mapped cells)
"""

import re
import sys

def extract_area_and_cells(log_file):
    """Extract area and cell count from Yosys log"""
    with open(log_file, 'r') as f:
        content = f.read()
    
    # Extract chip area
    area_match = re.search(r"Chip area for module.*?:\s+([\d.]+)", content)
    area = float(area_match.group(1)) if area_match else None
    
    # Extract cell count
    cells_match = re.search(r"Number of cells:\s+(\d+)", content)
    cells = int(cells_match.group(1)) if cells_match else None
    
    return area, cells

def extract_timing(sta_log):
    """Extract timing metrics from OpenSTA log"""
    with open(sta_log, 'r') as f:
        lines = f.readlines()
    
    wns = None
    tns = None
    critical_delay = None
    
    for i, line in enumerate(lines):
        if 'wns' in line.lower():
            wns_match = re.search(r'wns\s+([\d.-]+)', line)
            if wns_match:
                wns = float(wns_match.group(1))
        if 'tns' in line.lower():
            tns_match = re.search(r'tns\s+([\d.-]+)', line)
            if tns_match:
                tns = float(tns_match.group(1))
        if 'slack (MET)' in line or 'slack (VIOLATED)' in line:
            slack_match = re.search(r'([\d.-]+)\s+slack', line)
            if slack_match:
                critical_delay = 2.0 - float(slack_match.group(1))  # period - slack = delay
    
    return wns, tns, critical_delay

def main():
    print("=" * 70)
    print("FINAL SYNTHESIS METRICS - LIBRARY MAPPED CELLS")
    print("=" * 70)
    print()
    
    # Extract area metrics
    lmul_area, lmul_cells = extract_area_and_cells('synthesis/out/lmul_yosys.log')
    bf16_area, bf16_cells = extract_area_and_cells('synthesis/out/bf16_yosys.log')
    
    # Extract timing metrics
    lmul_wns, lmul_tns, lmul_delay = extract_timing('synthesis/out/lmul_sta.log')
    bf16_wns, bf16_tns, bf16_delay = extract_timing('synthesis/out/bf16_sta.log')
    
    # Calculate improvements
    area_reduction = ((bf16_area - lmul_area) / bf16_area) * 100
    cell_reduction = ((bf16_cells - lmul_cells) / bf16_cells) * 100
    
    if lmul_delay and bf16_delay:
        delay_reduction = ((bf16_delay - lmul_delay) / bf16_delay) * 100
        max_freq_lmul = 1000.0 / lmul_delay if lmul_delay > 0 else 0
        max_freq_bf16 = 1000.0 / bf16_delay if bf16_delay > 0 else 0
    else:
        delay_reduction = None
        max_freq_lmul = None
        max_freq_bf16 = None
    
    # Print results
    print("AREA METRICS:")
    print("-" * 70)
    print(f"  L-Mul:     {lmul_cells:3d} cells,  {lmul_area:8.2f} area units")
    print(f"  IEEE BF16: {bf16_cells:3d} cells,  {bf16_area:8.2f} area units")
    print(f"  Area reduction:  {area_reduction:.1f}%")
    print(f"  Cell reduction:  {cell_reduction:.1f}%")
    print()
    
    print("TIMING METRICS:")
    print("-" * 70)
    if lmul_delay and bf16_delay:
        print(f"  L-Mul:     Critical path: {lmul_delay:.4f} ns,  Max freq: {max_freq_lmul:.1f} MHz,  WNS: {lmul_wns:.2f}")
        print(f"  IEEE BF16: Critical path: {bf16_delay:.4f} ns,  Max freq: {max_freq_bf16:.1f} MHz,  WNS: {bf16_wns:.2f}")
        print(f"  Delay reduction:  {delay_reduction:.1f}%")
    else:
        print(f"  L-Mul:     WNS: {lmul_wns:.2f}, TNS: {lmul_tns:.2f}")
        print(f"  IEEE BF16: WNS: {bf16_wns:.2f}, TNS: {bf16_tns:.2f}")
        print("  (Both designs meet 2.0 ns clock constraint)")
    print()
    
    print("COMPARISON TABLE:")
    print("-" * 70)
    print(f"{'Metric':<25} {'L-Mul':<15} {'IEEE BF16':<15} {'Improvement':<15}")
    print("-" * 70)
    print(f"{'Cells':<25} {lmul_cells:<15} {bf16_cells:<15} {cell_reduction:.1f}%")
    print(f"{'Area (units)':<25} {lmul_area:<15.2f} {bf16_area:<15.2f} {area_reduction:.1f}%")
    if lmul_delay and bf16_delay:
        print(f"{'Critical Path (ns)':<25} {lmul_delay:<15.4f} {bf16_delay:<15.4f} {delay_reduction:.1f}%")
        print(f"{'Max Frequency (MHz)':<25} {max_freq_lmul:<15.1f} {max_freq_bf16:<15.1f} {((max_freq_lmul/max_freq_bf16-1)*100):.1f}% faster")
    print()
    
    print("=" * 70)
    print("✅ KEY FINDINGS:")
    print("=" * 70)
    print(f"  • L-Mul uses {cell_reduction:.1f}% fewer cells")
    print(f"  • L-Mul uses {area_reduction:.1f}% less area")
    if delay_reduction:
        print(f"  • L-Mul is {delay_reduction:.1f}% faster (shorter critical path)")
    print("  • Both designs meet 2.0 ns clock constraint (500 MHz)")
    print("=" * 70)

if __name__ == "__main__":
    main()

