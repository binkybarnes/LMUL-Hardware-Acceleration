#!/usr/bin/env python3
"""
Extract and display gem5 statistics for LMUL accelerator

Usage:
    python3 extract_stats.py <stats.txt>
    python3 extract_stats.py m5out/stats.txt
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

def extract_system_stats(stats):
    """Extract overall system statistics"""
    results = {}
    
    # Simulation time
    if 'simSeconds' in stats:
        results['sim_seconds'] = stats['simSeconds']
    if 'simTicks' in stats:
        results['sim_ticks'] = stats['simTicks']
    
    # CPU stats
    if 'system.cpu.numCycles' in stats:
        results['cpu_cycles'] = stats['system.cpu.numCycles']
    if 'system.cpu.committedInsts' in stats:
        results['cpu_instructions'] = stats['system.cpu.committedInsts']
    
    # Calculate IPC
    if 'cpu_instructions' in results and 'cpu_cycles' in results:
        if results['cpu_cycles'] > 0:
            results['ipc'] = results['cpu_instructions'] / results['cpu_cycles']
    
    return results

def extract_lmul_stats(stats):
    """Extract LMUL accelerator statistics"""
    results = {}
    
    # Look for accelerator stats (may have different prefixes)
    patterns = [
        'system.lmul_accel',
        'lmul_accel',
        'accel'
    ]
    
    for key, value in stats.items():
        for pattern in patterns:
            if pattern in key.lower():
                # Simplify key name
                simple_key = key.split('.')[-1]
                results[simple_key] = value
    
    # Calculate derived metrics
    if 'totalOps' in results and 'totalCycles' in results:
        if results['totalCycles'] > 0:
            results['ops_per_cycle'] = results['totalOps'] / results['totalCycles']
    
    if 'totalOps' in results and 'sim_seconds' in stats:
        if stats['sim_seconds'] > 0:
            results['gops'] = results['totalOps'] / stats['sim_seconds'] / 1e9
    
    return results

def print_stats(system_stats, lmul_stats):
    """Pretty print statistics"""
    
    print("\n" + "="*60)
    print("gem5 LMUL Accelerator Statistics")
    print("="*60)
    
    if system_stats:
        print("\nSystem Statistics:")
        print("-" * 40)
        for key, value in sorted(system_stats.items()):
            if isinstance(value, float):
                print(f"  {key:25s}: {value:.6f}")
            else:
                print(f"  {key:25s}: {value}")
    
    if lmul_stats:
        print("\nLMUL Accelerator Statistics:")
        print("-" * 40)
        for key, value in sorted(lmul_stats.items()):
            if isinstance(value, float):
                print(f"  {key:25s}: {value:.6f}")
            else:
                print(f"  {key:25s}: {value}")
    
    print("\n" + "="*60 + "\n")

def compare_runs(stats_files):
    """Compare statistics from multiple runs"""
    all_stats = []
    
    for filename in stats_files:
        stats = parse_stats(filename)
        system = extract_system_stats(stats)
        lmul = extract_lmul_stats(stats)
        all_stats.append({
            'file': filename,
            'system': system,
            'lmul': lmul
        })
    
    print("\n" + "="*80)
    print("Comparison of Multiple Runs")
    print("="*80)
    
    # Print comparison table
    if all_stats and all_stats[0]['lmul']:
        keys = sorted(all_stats[0]['lmul'].keys())
        
        # Header
        print(f"\n{'Metric':<25s}", end='')
        for i, run in enumerate(all_stats):
            print(f"Run {i+1:<12s}", end='')
        print()
        print("-" * 80)
        
        # Data rows
        for key in keys:
            print(f"{key:<25s}", end='')
            for run in all_stats:
                value = run['lmul'].get(key, 'N/A')
                if isinstance(value, float):
                    print(f"{value:<15.6f}", end='')
                else:
                    print(f"{value:<15}", end='')
            print()
    
    print("\n" + "="*80 + "\n")

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 extract_stats.py <stats.txt> [stats2.txt ...]")
        sys.exit(1)
    
    stats_files = sys.argv[1:]
    
    if len(stats_files) == 1:
        # Single file: detailed output
        stats = parse_stats(stats_files[0])
        system_stats = extract_system_stats(stats)
        lmul_stats = extract_lmul_stats(stats)
        print_stats(system_stats, lmul_stats)
    else:
        # Multiple files: comparison
        compare_runs(stats_files)

if __name__ == '__main__':
    main()
