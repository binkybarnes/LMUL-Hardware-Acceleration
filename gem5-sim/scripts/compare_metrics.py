#!/usr/bin/env python3
"""
Compare performance metrics between LMUL accelerator and IEEE BF16 runs

Extracts and compares key metrics from gem5 statistics files.

Usage:
    python3 compare_metrics.py <lmul_stats.txt> <ieee_stats.txt>
    python3 compare_metrics.py m5out_lmul/stats.txt m5out_ieee/stats.txt
"""

import sys
import re
from collections import defaultdict

def parse_stats(filename):
    """Parse gem5 stats.txt file"""
    stats = {}
    
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('#'):
                continue
            
            # Parse stat: name value [description]
            match = re.match(r'(\S+)\s+(\S+)', line)
            if match:
                name, value = match.groups()
                try:
                    # Try to convert to number
                    if '.' in value:
                        stats[name] = float(value)
                    else:
                        stats[name] = int(value)
                except ValueError:
                    stats[name] = value
    
    return stats

def extract_key_metrics(stats):
    """Extract key performance metrics"""
    metrics = {}
    
    # Simulation time
    metrics['sim_seconds'] = stats.get('simSeconds', 0)
    metrics['sim_ticks'] = stats.get('simTicks', 0)
    
    # CPU metrics
    metrics['cpu_cycles'] = stats.get('system.cpu.numCycles', 0)
    metrics['instructions'] = stats.get('simInsts', 0)
    metrics['cpi'] = stats.get('system.cpu.cpi', 0)
    metrics['ipc'] = stats.get('system.cpu.ipc', 0)
    
    # Accelerator metrics (if available)
    accel_keys = [k for k in stats.keys() if 'lmul_accel' in k.lower()]
    for key in accel_keys:
        simple_key = key.split('.')[-1]
        metrics[f'accel_{simple_key}'] = stats[key]
    
    # Memory metrics
    metrics['host_memory'] = stats.get('hostMemory', 0)
    
    return metrics

def calculate_speedup(lmul_metrics, ieee_metrics):
    """Calculate speedup metrics"""
    speedup = {}
    
    if ieee_metrics['sim_seconds'] > 0:
        speedup['time'] = ieee_metrics['sim_seconds'] / lmul_metrics['sim_seconds']
    
    if ieee_metrics['cpu_cycles'] > 0:
        speedup['cycles'] = ieee_metrics['cpu_cycles'] / lmul_metrics['cpu_cycles']
    
    if ieee_metrics['cpi'] > 0:
        speedup['cpi'] = ieee_metrics['cpi'] / lmul_metrics['cpi']
    
    if lmul_metrics['ipc'] > 0 and ieee_metrics['ipc'] > 0:
        speedup['ipc'] = lmul_metrics['ipc'] / ieee_metrics['ipc']
    
    return speedup

def print_comparison(lmul_metrics, ieee_metrics, speedup):
    """Print formatted comparison"""
    print("\n" + "="*70)
    print("Performance Comparison: LMUL Accelerator vs IEEE BF16")
    print("="*70)
    
    print(f"\n{'Metric':<30s} {'LMUL':<20s} {'IEEE':<20s}")
    print("-"*70)
    
    # Simulation time
    print(f"{'Simulation Time (s)':<30s} {lmul_metrics['sim_seconds']:<20.6f} {ieee_metrics['sim_seconds']:<20.6f}")
    if 'time' in speedup:
        print(f"  → Speedup: {speedup['time']:.2f}x")
    
    # CPU cycles
    print(f"{'CPU Cycles':<30s} {lmul_metrics['cpu_cycles']:<20,} {ieee_metrics['cpu_cycles']:<20,}")
    if 'cycles' in speedup:
        print(f"  → Speedup: {speedup['cycles']:.2f}x")
    
    # Instructions
    print(f"{'Instructions':<30s} {lmul_metrics['instructions']:<20,} {ieee_metrics['instructions']:<20,}")
    
    # CPI
    print(f"{'CPI':<30s} {lmul_metrics['cpi']:<20.4f} {ieee_metrics['cpi']:<20.4f}")
    if 'cpi' in speedup:
        print(f"  → Improvement: {speedup['cpi']:.2f}x")
    
    # IPC
    print(f"{'IPC':<30s} {lmul_metrics['ipc']:<20.6f} {ieee_metrics['ipc']:<20.6f}")
    if 'ipc' in speedup:
        print(f"  → Improvement: {speedup['ipc']:.2f}x")
    
    # Accelerator-specific metrics
    lmul_accel = {k: v for k, v in lmul_metrics.items() if k.startswith('accel_')}
    ieee_accel = {k: v for k, v in ieee_metrics.items() if k.startswith('accel_')}
    
    if lmul_accel or ieee_accel:
        print(f"\n{'Accelerator Metrics':<30s}")
        print("-"*70)
        all_accel_keys = set(lmul_accel.keys()) | set(ieee_accel.keys())
        for key in sorted(all_accel_keys):
            name = key.replace('accel_', '').replace('_', ' ').title()
            lmul_val = lmul_accel.get(key, 'N/A')
            ieee_val = ieee_accel.get(key, 'N/A')
            if isinstance(lmul_val, (int, float)) and isinstance(ieee_val, (int, float)):
                print(f"{name:<30s} {lmul_val:<20} {ieee_val:<20}")
            else:
                print(f"{name:<30s} {str(lmul_val):<20s} {str(ieee_val):<20s}")
    
    print("="*70 + "\n")

def main():
    if len(sys.argv) < 3:
        print("Usage: python3 compare_metrics.py <lmul_stats.txt> <ieee_stats.txt>")
        print("\nExample:")
        print("  python3 compare_metrics.py m5out_lmul/stats.txt m5out_ieee/stats.txt")
        sys.exit(1)
    
    lmul_file = sys.argv[1]
    ieee_file = sys.argv[2]
    
    print(f"Loading LMUL stats from: {lmul_file}")
    lmul_stats = parse_stats(lmul_file)
    lmul_metrics = extract_key_metrics(lmul_stats)
    
    print(f"Loading IEEE stats from: {ieee_file}")
    ieee_stats = parse_stats(ieee_file)
    ieee_metrics = extract_key_metrics(ieee_stats)
    
    speedup = calculate_speedup(lmul_metrics, ieee_metrics)
    print_comparison(lmul_metrics, ieee_metrics, speedup)

if __name__ == '__main__':
    main()
