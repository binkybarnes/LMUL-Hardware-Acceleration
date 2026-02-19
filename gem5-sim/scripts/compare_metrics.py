#!/usr/bin/env python3
"""
Compare performance metrics between LMUL accelerator and IEEE BF16 runs

Extracts and compares key metrics from gem5 statistics files.

Usage:
    python3 compare_metrics.py <lmul_stats.txt> <ieee_stats.txt> [-o FILE]
    python3 compare_metrics.py m5out_lmul/stats.txt m5out_ieee/stats.txt -o comparison.txt
"""

import re
import argparse

def _first_present(mapping, keys, default=0):
    """Return the first present key from mapping."""
    for key in keys:
        if key in mapping:
            return mapping[key]
    return default

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
                    # Try integer first, then float (handles scientific notation)
                    stats[name] = int(value, 0)
                except ValueError:
                    try:
                        stats[name] = float(value)
                    except ValueError:
                        stats[name] = value
    
    return stats

def extract_key_metrics(
    stats,
    cpu_dyn_energy_per_cycle_pj=500.0,
    cpu_dyn_energy_per_inst_pj=50.0,
    cpu_static_power_mw=200.0,
):
    """Extract key performance and energy metrics."""
    metrics = {}
    
    # Simulation time
    metrics['sim_seconds'] = stats.get('simSeconds', 0)
    metrics['sim_ticks'] = stats.get('simTicks', 0)
    
    # CPU metrics
    metrics['cpu_cycles'] = stats.get('system.cpu.numCycles', 0)
    metrics['instructions'] = stats.get('simInsts', 0)
    metrics['cpi'] = stats.get('system.cpu.cpi', 0)
    metrics['ipc'] = stats.get('system.cpu.ipc', 0)

    # CPU energy model (first-order): dynamic from event counts + static from runtime.
    metrics['cpu_dyn_energy_per_cycle_pj'] = cpu_dyn_energy_per_cycle_pj
    metrics['cpu_dyn_energy_per_inst_pj'] = cpu_dyn_energy_per_inst_pj
    metrics['cpu_static_power_mw_cfg'] = cpu_static_power_mw
    cpu_dynamic_energy_j = (
        metrics['cpu_cycles'] * cpu_dyn_energy_per_cycle_pj * 1e-12 +
        metrics['instructions'] * cpu_dyn_energy_per_inst_pj * 1e-12
    )
    cpu_static_energy_j = (
        (cpu_static_power_mw * 1e-3) * metrics['sim_seconds']
        if metrics.get('sim_seconds', 0) > 0 else 0
    )
    metrics['cpu_dynamic_energy_j'] = cpu_dynamic_energy_j
    metrics['cpu_static_energy_j'] = cpu_static_energy_j
    metrics['cpu_energy_j'] = cpu_dynamic_energy_j + cpu_static_energy_j
    metrics['cpu_energy_uJ'] = metrics['cpu_energy_j'] * 1e6
    metrics['cpu_dynamic_power_mW'] = (
        (cpu_dynamic_energy_j / metrics['sim_seconds']) * 1e3
        if metrics.get('sim_seconds', 0) > 0 else 0
    )
    metrics['cpu_static_power_mW'] = cpu_static_power_mw
    metrics['cpu_total_power_mW'] = (
        metrics['cpu_dynamic_power_mW'] + metrics['cpu_static_power_mW']
    )
    
    # Accelerator metrics (if available)
    accel_keys = [k for k in stats.keys() if 'lmul_accel' in k.lower()]
    for key in accel_keys:
        # Keep the full stat suffix after `lmul_accel.` so histogram buckets
        # remain identifiable and can be filtered in report formatting.
        if 'lmul_accel.' in key:
            simple_key = key.split('lmul_accel.', 1)[1]
        else:
            simple_key = key.split('.')[-1]
        metrics[f'accel_{simple_key}'] = stats[key]

    accel_total_cycles = _first_present(
        metrics, ['accel_totalCycles', 'accel_totalcycles'], 0
    )
    accel_compute_cycles = _first_present(
        metrics, ['accel_computeCycles', 'accel_computecycles'], 0
    )
    accel_dma_read_cycles = _first_present(
        metrics, ['accel_dmaReadCycles', 'accel_dmareadcycles'], 0
    )
    accel_dma_write_cycles = _first_present(
        metrics, ['accel_dmaWriteCycles', 'accel_dmawritecycles'], 0
    )
    accel_mem_transfer_cycles = _first_present(
        metrics,
        ['accel_memoryTransferCycles', 'accel_memorytransfercycles'],
        accel_dma_read_cycles + accel_dma_write_cycles,
    )
    accel_mmio_read_cycles = _first_present(
        metrics, ['accel_mmioReadCycles', 'accel_mmioreadcycles'], 0
    )
    accel_mmio_write_cycles = _first_present(
        metrics, ['accel_mmioWriteCycles', 'accel_mmiowritecycles'], 0
    )
    accel_mmio_total_cycles = _first_present(
        metrics,
        ['accel_mmioTotalCycles', 'accel_mmiototalcycles'],
        accel_mmio_read_cycles + accel_mmio_write_cycles,
    )
    accounted_accel_cycles = (
        accel_dma_read_cycles +
        accel_compute_cycles +
        accel_dma_write_cycles
    )
    accel_other_cycles = (
        max(accel_total_cycles - accounted_accel_cycles, 0)
        if accel_total_cycles > 0 else 0
    )

    metrics['accel_total_cycles'] = accel_total_cycles
    metrics['accel_compute_cycles'] = accel_compute_cycles
    metrics['accel_dma_read_cycles'] = accel_dma_read_cycles
    metrics['accel_dma_write_cycles'] = accel_dma_write_cycles
    metrics['accel_mem_transfer_cycles'] = accel_mem_transfer_cycles
    metrics['accel_mmio_read_cycles'] = accel_mmio_read_cycles
    metrics['accel_mmio_write_cycles'] = accel_mmio_write_cycles
    metrics['accel_mmio_total_cycles'] = accel_mmio_total_cycles
    metrics['accel_other_cycles'] = accel_other_cycles

    # Estimated accelerator power/energy metrics (if accelerator exports them)
    accel_total_energy_j = metrics.get('accel_estimatedTotalEnergyJ', 0)
    accel_compute_energy_j = metrics.get('accel_estimatedComputeEnergyJ', 0)
    accel_dma_energy_j = metrics.get('accel_estimatedDmaEnergyJ', 0)
    accel_leakage_energy_j = metrics.get('accel_estimatedLeakageEnergyJ', 0)
    metrics['accel_total_energy_j'] = accel_total_energy_j
    metrics['accel_compute_energy_j'] = accel_compute_energy_j
    metrics['accel_dma_energy_j'] = accel_dma_energy_j
    metrics['accel_leakage_energy_j'] = accel_leakage_energy_j
    metrics['accel_total_energy_uJ'] = accel_total_energy_j * 1e6
    metrics['accel_compute_energy_uJ'] = accel_compute_energy_j * 1e6
    metrics['accel_dma_energy_uJ'] = accel_dma_energy_j * 1e6
    metrics['accel_leakage_energy_uJ'] = accel_leakage_energy_j * 1e6
    metrics['accel_avg_power_mW'] = (
        (accel_total_energy_j / metrics['sim_seconds']) * 1e3
        if metrics.get('sim_seconds', 0) > 0 else 0
    )
    
    # Memory metrics
    metrics['host_memory'] = stats.get('hostMemory', 0)
    
    # DRAM energy (gem5 DRAM controller reports per-rank energy in pJ)
    dram_rank0_energy = stats.get('system.mem_ctrl.dram.rank0.totalEnergy', 0)
    dram_rank1_energy = stats.get('system.mem_ctrl.dram.rank1.totalEnergy', 0)
    metrics['dram_energy_pJ'] = dram_rank0_energy + dram_rank1_energy
    metrics['dram_energy_j'] = metrics['dram_energy_pJ'] * 1e-12
    # pJ -> uJ: divide by 1e6 (1 uJ = 1e6 pJ)
    metrics['dram_energy_uJ'] = metrics['dram_energy_pJ'] / 1e6
    metrics['dram_power_mW'] = (
        stats.get('system.mem_ctrl.dram.rank0.averagePower', 0) +
        stats.get('system.mem_ctrl.dram.rank1.averagePower', 0)
    )

    # Estimated total system energy (DRAM + CPU power model + accelerator estimate).
    metrics['estimated_total_energy_j'] = (
        metrics['dram_energy_j'] +
        metrics['cpu_energy_j'] +
        metrics['accel_total_energy_j']
    )
    metrics['estimated_total_energy_uJ'] = metrics['estimated_total_energy_j'] * 1e6
    metrics['estimated_total_avg_power_mW'] = (
        (metrics['estimated_total_energy_j'] / metrics['sim_seconds']) * 1e3
        if metrics.get('sim_seconds', 0) > 0 else 0
    )
    
    return metrics

def calculate_speedup(lmul_metrics, ieee_metrics):
    """Calculate speedup metrics"""
    speedup = {}
    
    if ieee_metrics['sim_seconds'] > 0 and lmul_metrics['sim_seconds'] > 0:
        speedup['time'] = ieee_metrics['sim_seconds'] / lmul_metrics['sim_seconds']
    
    if (lmul_metrics.get('dram_energy_pJ', 0) > 0 and
            ieee_metrics.get('dram_energy_pJ', 0) > 0):
        speedup['dram_energy'] = (ieee_metrics['dram_energy_pJ'] /
                                  lmul_metrics['dram_energy_pJ'])

    if (lmul_metrics.get('accel_total_energy_j', 0) > 0 and
            ieee_metrics.get('accel_total_energy_j', 0) > 0):
        speedup['accel_total_energy'] = (
            ieee_metrics['accel_total_energy_j'] /
            lmul_metrics['accel_total_energy_j']
        )

    if (lmul_metrics.get('cpu_energy_j', 0) > 0 and
            ieee_metrics.get('cpu_energy_j', 0) > 0):
        speedup['cpu_energy'] = (
            ieee_metrics['cpu_energy_j'] / lmul_metrics['cpu_energy_j']
        )

    if (lmul_metrics.get('estimated_total_energy_j', 0) > 0 and
            ieee_metrics.get('estimated_total_energy_j', 0) > 0):
        speedup['total_energy'] = (
            ieee_metrics['estimated_total_energy_j'] /
            lmul_metrics['estimated_total_energy_j']
        )
    
    if ieee_metrics['cpu_cycles'] > 0 and lmul_metrics['cpu_cycles'] > 0:
        speedup['cycles'] = ieee_metrics['cpu_cycles'] / lmul_metrics['cpu_cycles']
    
    if ieee_metrics['cpi'] > 0 and lmul_metrics['cpi'] > 0:
        speedup['cpi'] = ieee_metrics['cpi'] / lmul_metrics['cpi']
    
    if lmul_metrics['ipc'] > 0 and ieee_metrics['ipc'] > 0:
        speedup['ipc'] = lmul_metrics['ipc'] / ieee_metrics['ipc']
    
    return speedup

def format_comparison(lmul_metrics, ieee_metrics, speedup):
    """Return formatted comparison as a string."""
    def pct(part, whole):
        return (100.0 * part / whole) if whole > 0 else 0.0

    lines = []
    lines.append("\n" + "="*70)
    lines.append("Performance Comparison: LMUL Accelerator vs Native IEEE BF16 (CPU)")
    lines.append("="*70)
    lines.append("")
    lines.append("Final Metrics")
    lines.append("-"*70)
    lines.append(f"{'Metric':<30s} {'LMUL':<20s} {'IEEE':<20s}")
    lines.append(f"{'Simulation Time (s)':<30s} {lmul_metrics['sim_seconds']:<20.6f} {ieee_metrics['sim_seconds']:<20.6f}")
    if 'time' in speedup:
        lines.append(f"  → Speedup: {speedup['time']:.2f}x")
    lines.append(f"{'CPU Cycles':<30s} {lmul_metrics['cpu_cycles']:<20,} {ieee_metrics['cpu_cycles']:<20,}")
    if 'cycles' in speedup:
        lines.append(f"  → Speedup: {speedup['cycles']:.2f}x")
    lines.append(f"{'Estimated total energy (µJ)':<30s} {lmul_metrics.get('estimated_total_energy_uJ', 0):<20.3f} {ieee_metrics.get('estimated_total_energy_uJ', 0):<20.3f}")
    if 'total_energy' in speedup:
        lines.append(f"  → Total energy ratio (IEEE/LMUL): {speedup['total_energy']:.2f}x (>1 = LMUL used less)")
    lines.append("")

    lines.append("Performance Details")
    lines.append("-"*70)
    lines.append(f"{'Metric':<30s} {'LMUL':<20s} {'IEEE':<20s}")
    lines.append(f"{'Instructions':<30s} {lmul_metrics['instructions']:<20,} {ieee_metrics['instructions']:<20,}")
    lines.append(f"{'CPI':<30s} {lmul_metrics['cpi']:<20.4f} {ieee_metrics['cpi']:<20.4f}")
    if 'cpi' in speedup:
        lines.append(f"  → Improvement: {speedup['cpi']:.2f}x")
    lines.append(f"{'IPC':<30s} {lmul_metrics['ipc']:<20.6f} {ieee_metrics['ipc']:<20.6f}")
    if 'ipc' in speedup:
        lines.append(f"  → Improvement: {speedup['ipc']:.2f}x")
    lines.append("")

    lines.append("Cycle Categorization")
    lines.append("-"*70)
    lines.append(f"{'Metric':<30s} {'LMUL':<20s} {'IEEE':<20s}")
    lines.append(f"{'CPU total cycles':<30s} {lmul_metrics.get('cpu_cycles', 0):<20,} {ieee_metrics.get('cpu_cycles', 0):<20,}")

    lmul_accel_total = lmul_metrics.get('accel_total_cycles', 0)
    ieee_accel_total = ieee_metrics.get('accel_total_cycles', 0)
    if (lmul_accel_total > 0 or ieee_accel_total > 0):
        lines.append(f"{'Accel total cycles':<30s} {lmul_accel_total:<20,} {ieee_accel_total:<20,}")
        lines.append(
            f"{'  - MMIO I/O cycles':<30s} "
            f"{lmul_metrics.get('accel_mmio_total_cycles', 0):<20,} "
            f"{ieee_metrics.get('accel_mmio_total_cycles', 0):<20,}"
        )
        lines.append(
            f"{'  - DMA read cycles':<30s} "
            f"{lmul_metrics.get('accel_dma_read_cycles', 0):<20,} "
            f"{ieee_metrics.get('accel_dma_read_cycles', 0):<20,}"
        )
        lines.append(
            f"{'  - Compute cycles':<30s} "
            f"{lmul_metrics.get('accel_compute_cycles', 0):<20,} "
            f"{ieee_metrics.get('accel_compute_cycles', 0):<20,}"
        )
        lines.append(
            f"{'  - DMA write cycles':<30s} "
            f"{lmul_metrics.get('accel_dma_write_cycles', 0):<20,} "
            f"{ieee_metrics.get('accel_dma_write_cycles', 0):<20,}"
        )
        lines.append(
            f"{'  - Other accel cycles':<30s} "
            f"{lmul_metrics.get('accel_other_cycles', 0):<20,} "
            f"{ieee_metrics.get('accel_other_cycles', 0):<20,}"
        )
        if lmul_accel_total > 0 or ieee_accel_total > 0:
            lines.append(
                f"{'  - DMA+compute share (%)':<30s} "
                f"{pct(lmul_metrics.get('accel_mem_transfer_cycles', 0) + lmul_metrics.get('accel_compute_cycles', 0), lmul_accel_total):<20.2f} "
                f"{pct(ieee_metrics.get('accel_mem_transfer_cycles', 0) + ieee_metrics.get('accel_compute_cycles', 0), ieee_accel_total):<20.2f}"
            )
    lines.append("")

    lines.append("Energy Breakdown")
    lines.append("-"*70)
    lines.append(f"{'Metric':<30s} {'LMUL':<20s} {'IEEE':<20s}")
    # DRAM energy comes directly from gem5 DRAM stats.
    lines.append(f"{'DRAM energy (µJ)':<30s} {lmul_metrics.get('dram_energy_uJ', 0):<20.3f} {ieee_metrics.get('dram_energy_uJ', 0):<20.3f}")
    if 'dram_energy' in speedup:
        lines.append(f"  → DRAM energy ratio (IEEE/LMUL): {speedup['dram_energy']:.2f}x (>1 = LMUL used less)")
    lines.append(f"{'DRAM avg power (mW)':<30s} {lmul_metrics.get('dram_power_mW', 0):<20.3f} {ieee_metrics.get('dram_power_mW', 0):<20.3f}")

    if (lmul_metrics.get('accel_total_energy_j', 0) > 0 or
            ieee_metrics.get('accel_total_energy_j', 0) > 0):
        lines.append(f"{'Accel total energy (µJ)':<30s} {lmul_metrics.get('accel_total_energy_uJ', 0):<20.3f} {ieee_metrics.get('accel_total_energy_uJ', 0):<20.3f}")
        if 'accel_total_energy' in speedup:
            lines.append(f"  → Accel energy ratio (IEEE/LMUL): {speedup['accel_total_energy']:.2f}x (>1 = LMUL used less)")
        lines.append(f"{'Accel compute energy (µJ)':<30s} {lmul_metrics.get('accel_compute_energy_uJ', 0):<20.3f} {ieee_metrics.get('accel_compute_energy_uJ', 0):<20.3f}")
        lines.append(f"{'Accel DMA energy (µJ)':<30s} {lmul_metrics.get('accel_dma_energy_uJ', 0):<20.3f} {ieee_metrics.get('accel_dma_energy_uJ', 0):<20.3f}")
        lines.append(f"{'Accel leakage energy (µJ)':<30s} {lmul_metrics.get('accel_leakage_energy_uJ', 0):<20.3f} {ieee_metrics.get('accel_leakage_energy_uJ', 0):<20.3f}")
        lines.append(f"{'Accel avg power (mW)':<30s} {lmul_metrics.get('accel_avg_power_mW', 0):<20.3f} {ieee_metrics.get('accel_avg_power_mW', 0):<20.3f}")

    lines.append(f"{'CPU dyn power (mW)':<30s} {lmul_metrics.get('cpu_dynamic_power_mW', 0):<20.3f} {ieee_metrics.get('cpu_dynamic_power_mW', 0):<20.3f}")
    lines.append(f"{'CPU static power (mW)':<30s} {lmul_metrics.get('cpu_static_power_mW', 0):<20.3f} {ieee_metrics.get('cpu_static_power_mW', 0):<20.3f}")
    lines.append(f"{'CPU total power (mW)':<30s} {lmul_metrics.get('cpu_total_power_mW', 0):<20.3f} {ieee_metrics.get('cpu_total_power_mW', 0):<20.3f}")
    lines.append(f"{'CPU energy (µJ)':<30s} {lmul_metrics.get('cpu_energy_uJ', 0):<20.3f} {ieee_metrics.get('cpu_energy_uJ', 0):<20.3f}")
    if 'cpu_energy' in speedup:
        lines.append(f"  → CPU energy ratio (IEEE/LMUL): {speedup['cpu_energy']:.2f}x (>1 = LMUL used less)")
    lines.append(
        "  (CPU energy model: "
        f"{lmul_metrics.get('cpu_dyn_energy_per_cycle_pj', 0):.3f} pJ/cycle + "
        f"{lmul_metrics.get('cpu_dyn_energy_per_inst_pj', 0):.3f} pJ/instruction + "
        f"{lmul_metrics.get('cpu_static_power_mw_cfg', 0):.3f} mW static)"
    )

    lines.append(f"{'Estimated total avg power (mW)':<30s} {lmul_metrics.get('estimated_total_avg_power_mW', 0):<20.3f} {ieee_metrics.get('estimated_total_avg_power_mW', 0):<20.3f}")
    lines.append("  (Estimated total = DRAM + CPU first-order model + accelerator first-order model)")
    lines.append("")
    # Prefer only key accelerator stats for a readable report (skip opLatency buckets / power_state)
    ACCEL_SUMMARY_KEYS = (
        'accel_numCompletions', 'accel_numStarts', 'accel_numReads', 'accel_numWrites',
        'accel_totalCycles', 'accel_totalOps',
        'accel_mmioReadCycles', 'accel_mmioWriteCycles', 'accel_mmioTotalCycles',
        'accel_dmaReadCycles', 'accel_computeCycles',
        'accel_dmaWriteCycles', 'accel_memoryTransferCycles',
        'accel_dmaReadReqs', 'accel_dmaWriteReqs',
        'accel_dmaReadBytes', 'accel_dmaWriteBytes',
        'accel_estimatedComputeEnergyJ', 'accel_estimatedDmaEnergyJ',
        'accel_estimatedLeakageEnergyJ', 'accel_estimatedTotalEnergyJ',
        'accel_opLatency::mean', 'accel_opLatency::gmean', 'accel_opLatency::samples',
    )
    lmul_accel = {k: v for k, v in lmul_metrics.items() if k.startswith('accel_')}
    ieee_accel = {k: v for k, v in ieee_metrics.items() if k.startswith('accel_')}
    if lmul_accel or ieee_accel:
        lines.append(f"\n{'Accelerator Metrics (summary)':<30s}")
        lines.append("-"*70)
        all_accel_keys = set(lmul_accel.keys()) | set(ieee_accel.keys())
        lower_to_key = {k.lower(): k for k in all_accel_keys}
        summary_keys = []
        for desired in ACCEL_SUMMARY_KEYS:
            key = lower_to_key.get(desired.lower())
            if key and key not in summary_keys:
                summary_keys.append(key)
        remaining = sorted(all_accel_keys - set(summary_keys))
        def skip_accel_key(k):
            if 'opLatency::' in k and k not in ACCEL_SUMMARY_KEYS:
                return True
            if 'pwrStateResidencyTicks' in k or k.lower().endswith('pio'):
                return True
            if k.lower().startswith('accel_requestor'):
                return True
            if '::lmul_accel' in k.lower():
                return True
            if 'bwread' in k.lower() or 'bwwrite' in k.lower() or 'bwtotal' in k.lower():
                return True
            if 'avgpriority' in k.lower() or 'avg power' in k.lower():
                return True
            return False
        display_keys = summary_keys if summary_keys else [k for k in remaining if not skip_accel_key(k)]
        for key in display_keys:
            name = key.replace('accel_', '').replace('_', ' ').title()
            lmul_val = lmul_accel.get(key, 'N/A')
            ieee_val = ieee_accel.get(key, 'N/A')
            if isinstance(lmul_val, (int, float)) and isinstance(ieee_val, (int, float)):
                lines.append(f"{name:<30s} {lmul_val:<20} {ieee_val:<20}")
            else:
                lines.append(f"{name:<30s} {str(lmul_val):<20s} {str(ieee_val):<20s}")
    lines.append("="*70 + "\n")
    return "\n".join(lines)


def print_comparison(lmul_metrics, ieee_metrics, speedup):
    """Print formatted comparison to stdout."""
    print(format_comparison(lmul_metrics, ieee_metrics, speedup))

def main():
    parser = argparse.ArgumentParser(
        description="Compare LMUL vs IEEE gem5 stats",
        epilog="Example: python3 compare_metrics.py lmul/stats.txt ieee/stats.txt -o comparison.txt"
    )
    parser.add_argument("lmul_file", help="Path to LMUL run stats.txt")
    parser.add_argument("ieee_file", help="Path to IEEE run stats.txt")
    parser.add_argument("-o", "--output", metavar="FILE",
                        help="Also write comparison to FILE")
    parser.add_argument("--cpu-dyn-energy-per-cycle-pj", type=float, default=500.0,
                        help="CPU dynamic energy per cycle (pJ) for first-order CPU energy model")
    parser.add_argument("--cpu-dyn-energy-per-inst-pj", type=float, default=50.0,
                        help="CPU dynamic energy per committed instruction (pJ) for first-order CPU energy model")
    parser.add_argument("--cpu-static-power-mw", type=float, default=200.0,
                        help="CPU static power (mW) for first-order CPU energy model")
    args = parser.parse_args()
    
    lmul_file = args.lmul_file
    ieee_file = args.ieee_file
    
    print(f"Loading LMUL stats from: {lmul_file}")
    lmul_stats = parse_stats(lmul_file)
    lmul_metrics = extract_key_metrics(
        lmul_stats,
        cpu_dyn_energy_per_cycle_pj=args.cpu_dyn_energy_per_cycle_pj,
        cpu_dyn_energy_per_inst_pj=args.cpu_dyn_energy_per_inst_pj,
        cpu_static_power_mw=args.cpu_static_power_mw,
    )
    
    print(f"Loading IEEE stats from: {ieee_file}")
    ieee_stats = parse_stats(ieee_file)
    ieee_metrics = extract_key_metrics(
        ieee_stats,
        cpu_dyn_energy_per_cycle_pj=args.cpu_dyn_energy_per_cycle_pj,
        cpu_dyn_energy_per_inst_pj=args.cpu_dyn_energy_per_inst_pj,
        cpu_static_power_mw=args.cpu_static_power_mw,
    )
    
    speedup = calculate_speedup(lmul_metrics, ieee_metrics)
    out_text = format_comparison(lmul_metrics, ieee_metrics, speedup)
    print(out_text)
    
    if args.output:
        with open(args.output, "w") as f:
            f.write(out_text)
        print(f"Comparison written to: {args.output}")

if __name__ == '__main__':
    main()
