#!/bin/bash
#SBATCH --job-name=lmul-vs-ieee
#SBATCH --partition=shared
#SBATCH --account=TG-SEE260003
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --time=01:00:00
#SBATCH --output=compare_lmul_vs_ieee_%j.out
#SBATCH --error=compare_lmul_vs_ieee_%j.err
#SBATCH --export=ALL
#
# Submit from gem5-sim/ so all output stays under gem5-sim/:
#   cd gem5-sim && sbatch scripts/sbatch_compare_lmul_vs_ieee.slurm
#
# Optional: pass args to the compare script via env before submitting:
#   COMPARE_EXTRA_ARGS="--size 8" sbatch scripts/sbatch_compare_lmul_vs_ieee.slurm
#
# For 512x512 (recommended: 8x8 PE, 3h, 32G):
#   COMPARE_EXTRA_ARGS="--size 512 --pe-rows 8 --pe-cols 8" sbatch --time=03:00:00 --mem=32G scripts/sbatch_compare_lmul_vs_ieee.slurm
#
# The job runs the comparison inside the Singularity container (same as interactive).
# You can disconnect; check results with:
#   cat compare_lmul_vs_ieee_<JOBID>.out
#   squeue -u $USER
#
# Expected output (all under gem5-sim/):
#   compare_lmul_vs_ieee_<JOBID>.out   - stdout from this job
#   compare_lmul_vs_ieee_<JOBID>.err   - stderr from this job
#   lmul_vs_ieee_comparison/           - created by compare script
#     lmul/stats.txt, simulation.log, ...
#     ieee/stats.txt, simulation.log, ...
#     performance_comparison.txt

set -e

# Submit dir = gem5-sim/ when you run "cd gem5-sim && sbatch scripts/..."
GEM5_SIM_DIR="${SLURM_SUBMIT_DIR:-.}"
REPO_ROOT="$(cd "$GEM5_SIM_DIR/.." && pwd)"
SIF="${LMUL_ACCEL_SIF:-$REPO_ROOT/../../../esolares/lmul_accel.sif}"

# Optional args for compare script (e.g. --size 8)
EXTRA_ARGS="${COMPARE_EXTRA_ARGS:-}"

echo "=========================================="
echo "Compare LMUL vs IEEE (batch job)"
echo "=========================================="
echo "Started: $(date)"
echo "Node: $(hostname)"
echo "gem5-sim dir: $GEM5_SIM_DIR"
echo "Repo root: $REPO_ROOT"
echo "Container: $SIF"
echo "=========================================="

module load singularitypro 2>/dev/null || true

# Run compare script inside container; bind repo so paths match
# Output dir lmul_vs_ieee_comparison is created in cwd = workspace/gem5-sim -> host gem5-sim/
singularity exec --bind "$REPO_ROOT:/LMUL-Hardware-Acceleration/workspace" "$SIF" \
  /bin/bash -c "cd /LMUL-Hardware-Acceleration/workspace/gem5-sim && ./scripts/compare_lmul_vs_ieee.sh $EXTRA_ARGS"

echo "=========================================="
echo "Finished: $(date)"
echo "=========================================="
