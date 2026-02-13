#!/usr/bin/env bash
# Single entry point for running install_model.sh in the Singularity container on Expanse.
#
# Deploy: copy or symlink this file to your workspace root so it sits next to LMUL-Hardware-Acceleration:
#   cp LMUL-Hardware-Acceleration/gem5-sim/scripts/run_job.sh ~/lmul_accel/run_job.sh
#   chmod +x ~/lmul_accel/run_job.sh
#
# Usage:
#   From workspace (e.g. ~/lmul_accel):  ./run_job.sh
#     -> Launches srun, which re-runs this script inside the job and runs the container.
#   Or call via srun yourself:
#     srun -p shared -A TG-SEE260003 -N 1 -n 1 -c 8 --mem=32G -t 03:00:00 --export=ALL ~/lmul_accel/run_job.sh
#
# Layout expected: workspace/run_job.sh, workspace/LMUL-Hardware-Acceleration/, workspace/../esolares/lmul_accel.sif

set -e

WORKSPACE="$(cd "$(dirname "$0")" && pwd)"
SIF="${LMUL_ACCEL_SIF:-${WORKSPACE}/../esolares/lmul_accel.sif}"

if [ -z "${SLURM_JOB_ID:-}" ]; then
  # Not inside a job: launch srun so this script runs again on the compute node
  # -n 1 = one task; -c 8 = 8 CPUs; --mem=32G required for gem5 linker (shared partition default is too small)
  exec srun -p shared -A TG-SEE260003 -N 1 -n 1 -c 8 --mem=32G -t 03:00:00 --export=ALL bash -c "cd '$WORKSPACE' && ./run_job.sh"
fi

# Inside the allocation: load module and run install in container
module load singularitypro 2>/dev/null || true
singularity exec --bind "${WORKSPACE}:/LMUL-Hardware-Acceleration/workspace" "${SIF}" \
  /bin/bash -c "cd /LMUL-Hardware-Acceleration/workspace/LMUL-Hardware-Acceleration && ./gem5-sim/scripts/install_model.sh"
