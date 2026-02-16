#!/usr/bin/env python3
"""
Extract metrics from full accelerator synthesis logs
"""

import re
from pathlib import Path

def extract_total_area(log_file):
    """Extract total chip area from synthesis log"""
    with open(log_file, 'r') as f:
        content = f.read()
    
    # Look for "Chip area for module"
    area_match = re.search(r"Chip area for module.*?:\s+([\d.]+)", content)
    return float(area_match.group(1)) if area_match else None

def extract_cell_count(log_file):
    """Extract total cell count"""
    with open(log_file, 'r') as f:
        content = f.read()
    
    cells_match = re.search(r"Number of cells:\s+(\d+)", content)
    return int(cells_match.group(1)) if cells_match else None

def extract_cell_breakdown(log_file):
    """Extract breakdown by cell type"""
    with open(log_file, 'r') as f:
        content = f.read()
    
    cell_types = {}
    cell_section = re.search(r"Number of cells:.*?\n(.*?)(?=\n\n|\n   Area)", content, re.DOTALL)
    if cell_section:
        for line in cell_section.group(1).strip().split('\n'):
            match = re.match(r"\s+(\S+)\s+(\d+)", line)
            if match:
                cell_types[match.group(1)] = int(match.group(2))
    
    return cell_types

def calculate_throughput(pe_count, frequency_mhz, cycles_per_op=1):
    """Calculate theoretical throughput in GOPS"""
    # GOPS = (PE_count × frequency) / cycles_per_op / 1000
    return (pe_count * frequency_mhz) / cycles_per_op / 1000.0

def calculate_area_efficiency(area, gops):
    """Calculate area efficiency in GOPS/mm²"""
    # Assuming area units scale to mm² (need library-specific conversion)
    # For now, return GOPS per area unit
    return gops / area if area else None

def extract_accelerator_metrics(log_file, pe_count, frequency_mhz=500):
    """Extract all accelerator metrics"""
    area = extract_total_area(log_file)
    cells = extract_cell_count(log_file)
    cell_types = extract_cell_breakdown(log_file)
    
    # Calculate throughput (assuming 1 cycle per operation)
    gops = calculate_throughput(pe_count, frequency_mhz, cycles_per_op=1)
    
    # Calculate efficiency
    area_eff = calculate_area_efficiency(area, gops) if area else None
    
    return {
        'total_area': area,
        'total_cells': cells,
        'cell_types': cell_types,
        'pe_count': pe_count,
        'frequency_mhz': frequency_mhz,
        'throughput_gops': gops,
        'area_efficiency': area_eff
    }

def compare_accelerators(lmul_log, ieee_log, pe_count_lmul, pe_count_ieee, freq=500):
    """Compare L-Mul vs IEEE BF16 accelerators"""
    lmul_metrics = extract_accelerator_metrics(lmul_log, pe_count_lmul, freq)
    ieee_metrics = extract_accelerator_metrics(ieee_log, pe_count_ieee, freq)
    
    print("=" * 70)
    print("ACCELERATOR COMPARISON")
    print("=" * 70)
    
    print(f"\nL-Mul Accelerator ({pe_count_lmul} PEs):")
    print(f"  Total Area:  {lmul_metrics['total_area']:.2f} units")
    print(f"  Total Cells: {lmul_metrics['total_cells']}")
    print(f"  Throughput:  {lmul_metrics['throughput_gops']:.2f} GOPS")
    print(f"  Area Eff:    {lmul_metrics['area_efficiency']:.4f} GOPS/unit")
    
    print(f"\nIEEE BF16 Accelerator ({pe_count_ieee} PEs):")
    print(f"  Total Area:  {ieee_metrics['total_area']:.2f} units")
    print(f"  Total Cells: {ieee_metrics['total_cells']}")
    print(f"  Throughput:  {ieee_metrics['throughput_gops']:.2f} GOPS")
    print(f"  Area Eff:    {ieee_metrics['area_efficiency']:.4f} GOPS/unit")
    
    if lmul_metrics['total_area'] and ieee_metrics['total_area']:
        area_ratio = lmul_metrics['total_area'] / ieee_metrics['total_area']
        throughput_ratio = lmul_metrics['throughput_gops'] / ieee_metrics['throughput_gops']
        eff_ratio = lmul_metrics['area_efficiency'] / ieee_metrics['area_efficiency']
        
        print(f"\nIMPROVEMENTS:")
        print(f"  Area ratio:      {area_ratio:.2f}x (L-Mul vs IEEE)")
        print(f"  Throughput:      {throughput_ratio:.2f}x")
        print(f"  Area efficiency: {eff_ratio:.2f}x")

if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 3:
        print("Usage: extract_accelerator_metrics.py <lmul_log> <ieee_log> [pe_count_lmul] [pe_count_ieee]")
        sys.exit(1)
    
    lmul_log = sys.argv[1]
    ieee_log = sys.argv[2]
    pe_count_lmul = int(sys.argv[3]) if len(sys.argv) > 3 else 16
    pe_count_ieee = int(sys.argv[4]) if len(sys.argv) > 4 else 16
    
    compare_accelerators(lmul_log, ieee_log, pe_count_lmul, pe_count_ieee)
