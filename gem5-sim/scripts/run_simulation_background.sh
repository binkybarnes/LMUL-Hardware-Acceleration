#!/bin/bash
#
# Run gem5 simulation in background (survives disconnection)
#
# This script runs the simulation with nohup so it continues
# even if you close your laptop or disconnect from Codespace.
#
# Usage:
#   ./run_simulation_background.sh [same args as run_simulation.sh]
#   # Then check progress with: tail -f simulation.log
#   # Or check if done: ps aux | grep gem5
#

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RUN_SCRIPT="${SCRIPT_DIR}/run_simulation.sh"

# Generate log filename with timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_FILE="simulation_${TIMESTAMP}.log"

echo "========================================"
echo "Running simulation in background"
echo "========================================"
echo "Log file: $LOG_FILE"
echo "To monitor progress: tail -f $LOG_FILE"
echo "To check if running: ps aux | grep gem5"
echo "========================================"
echo

# Run with nohup in background
nohup bash "$RUN_SCRIPT" "$@" > "$LOG_FILE" 2>&1 &
PID=$!

echo "Simulation started in background (PID: $PID)"
echo "Log file: $LOG_FILE"
echo
echo "Commands:"
echo "  Monitor: tail -f $LOG_FILE"
echo "  Check status: ps -p $PID"
echo "  Stop: kill $PID"
echo
