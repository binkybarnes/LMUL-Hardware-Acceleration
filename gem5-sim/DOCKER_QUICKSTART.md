# Docker Quick Start for gem5

**For macOS users already running the dev container**

## One-Time Setup (30 minutes)

```bash
# Inside your running dev container:

# 1. Install gem5 dependencies (2 min)
apt-get update && apt-get install -y \
    m4 scons zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev \
    libgoogle-perftools-dev libboost-all-dev \
    gcc-arm-linux-gnueabi

# 2. Clone gem5 (1 min)
cd /workspace
git clone https://github.com/gem5/gem5.git
cd gem5
git checkout stable

# 3. Build gem5 (20-30 min ☕)
scons build/ARM/gem5.opt -j$(nproc)

# 4. Install LMUL model (5 min)
cd /workspace
./gem5-sim/scripts/install_model.sh

# 5. Build benchmark (1 min)
cd gem5-sim/benchmarks/matrix_multiply
make ARCH=arm

# 6. Test it works (2 min)
cd /workspace/gem5-sim
./scripts/run_simulation.sh --test
python3 scripts/extract_stats.py m5out/stats.txt
```

## Daily Usage

```bash
# Run simulations
cd /workspace/gem5-sim
./scripts/run_simulation.sh --size 16

# Compare LMUL vs IEEE
./scripts/run_simulation.sh --size 32
./scripts/run_simulation.sh --size 32 --ieee --output-dir m5out_ieee
python3 scripts/extract_stats.py m5out/stats.txt m5out_ieee/stats.txt

# Experiment with PE array sizes
./scripts/run_simulation.sh --pe-rows 8 --pe-cols 8 --size 64
```

## Key Points

✅ **gem5 location**: `/workspace/gem5/` (persists on your Mac)  
✅ **Container restarts**: gem5 persists (it's in mounted volume)  
✅ **Image rebuilds**: Need to reinstall dependencies (3 commands above)  
✅ **Results**: All in `m5out/` (also persists on your Mac)  

## Troubleshooting

**Not in container?**
```bash
# VS Code: Reopen in Container
# Or: docker run -it -v "$PWD":/workspace -w /workspace lmul-dev
```

**Lost gem5?**
```bash
ls /workspace/gem5/build/ARM/gem5.opt
# If not found, re-run setup above
```

**Want to add gem5 to `.gitignore`?**
```bash
echo "gem5/" >> /workspace/.gitignore
```

## Full Documentation

For detailed information, see:
- `DOCKER_SETUP.md` - Complete Docker installation guide
- `GETTING_STARTED.md` - General getting started
- `README.md` - Overview

---

**Ready?** Just copy-paste the setup commands above! 🚀
