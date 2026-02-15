# 🐳 START HERE - Docker Users (macOS)

**You're using Docker, which is PERFECT for gem5! This avoids all macOS conflicts.**

## What You Need to Know

✅ You're already in a Docker container  
✅ gem5 will install inside your container  
✅ Your `/workspace` folder is mounted from your Mac  
✅ gem5 will persist on your Mac (not lost when container restarts)  
✅ No installation needed on macOS itself  

## Quick Install (Copy-Paste This)

**Inside your dev container** (should already be there):

```bash
# 1. Install dependencies (2 min)
apt-get update && apt-get install -y \
    m4 scons zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev \
    libgoogle-perftools-dev libboost-all-dev \
    gcc-arm-linux-gnueabi

# 2. Clone and build gem5 (25-30 min - COFFEE TIME! ☕)
cd /workspace
git clone https://github.com/gem5/gem5.git
cd gem5 && git checkout stable
scons build/ARM/gem5.opt -j$(nproc)

# 3. Install LMUL accelerator model (5 min)
cd /workspace
./gem5-sim/scripts/install_model.sh

# 4. Build test benchmark (1 min)
cd gem5-sim/benchmarks/matrix_multiply
make ARCH=arm

# 5. RUN YOUR FIRST SIMULATION! (2 min)
cd /workspace/gem5-sim
./scripts/run_simulation.sh --test

# 6. View results
python3 scripts/extract_stats.py m5out/stats.txt
```

## Expected Output

After step 6, you should see:

```
============================================================
gem5 LMUL Accelerator Statistics
============================================================

System Statistics:
  sim_seconds              : 0.000123
  cpu_cycles               : 246000
  ...

LMUL Accelerator Statistics:
  numStarts                : 1
  numCompletions           : 1
  totalCycles              : 16
  totalOps                 : 128
  ops_per_cycle            : 8.00
  ...
============================================================
```

✅ **If you see this, you're done! It works!** 🎉

## What Just Happened?

1. **Installed gem5** in your Docker container (not on macOS)
2. **Built LMUL accelerator** model into gem5
3. **Ran a matrix multiply** benchmark using the accelerator
4. **Got performance statistics** showing it actually works

## Where Are The Files?

```
/workspace/gem5/              # gem5 source (on your Mac too!)
  ├── build/ARM/gem5.opt      # Compiled gem5 simulator
  ├── src/dev/lmul_accel/     # LMUL accelerator model
  └── m5out/                  # Simulation results
      └── stats.txt           # Performance statistics
```

**All of these persist on your Mac** in the workspace directory!

## Next Steps

### Try Different Configurations

```bash
# Larger matrix (16x16)
./scripts/run_simulation.sh --size 16

# Bigger PE array (8x8 instead of 4x4)
./scripts/run_simulation.sh --pe-rows 8 --pe-cols 8 --size 32

# Compare LMUL vs IEEE BF16
./scripts/run_simulation.sh --size 32
./scripts/run_simulation.sh --size 32 --ieee --output-dir m5out_ieee
python3 scripts/extract_stats.py m5out/stats.txt m5out_ieee/stats.txt
```

### Learn More

Read these in order:
1. ✅ You're here! (`START_HERE_DOCKER.md`)
2. `DOCKER_SETUP.md` - More Docker details
3. `README.md` - Overview of capabilities
4. `models/README.md` - How the accelerator works
5. `benchmarks/README.md` - Write your own benchmarks

### Verify Everything Works

```bash
./scripts/verify_setup.sh
```

Should show all green checkmarks ✓

## Common Questions

**Q: Do I need to install anything on macOS?**  
A: No! Everything runs in Docker.

**Q: Will this clash with my macOS system?**  
A: No! It's completely isolated in the container.

**Q: What if I rebuild my Docker container?**  
A: gem5 source code persists (it's in `/workspace`). Just re-run the dependencies install (step 1).

**Q: Where do simulation results go?**  
A: `/workspace/gem5/m5out/` - which is also on your Mac filesystem.

**Q: Can I edit the accelerator model?**  
A: Yes! Edit `models/lmul_accelerator.cc`, then run `./scripts/install_model.sh`

**Q: How do I update gem5?**  
A: `cd /workspace/gem5 && git pull && scons build/ARM/gem5.opt -j$(nproc)`

## Troubleshooting

**"apt-get: command not found"**
→ You need to be inside the Docker container
→ In VS Code: Reopen in Container

**"Permission denied"**
→ `chmod +x gem5/scripts/*.sh`

**"Out of disk space"**
→ Increase Docker disk allocation in Docker Desktop settings

**"Build failed"**
→ Reduce parallel jobs: `scons -j2 build/ARM/gem5.opt`

**"Simulation hangs"**
→ Try smaller test first: `./scripts/run_simulation.sh --test`

## Success Checklist

- [ ] Ran all 6 setup commands
- [ ] gem5.opt binary exists: `ls build/ARM/gem5.opt`
- [ ] Test simulation completed successfully
- [ ] Saw statistics with `ops_per_cycle` > 0
- [ ] `./scripts/verify_setup.sh` shows all ✓

**All checked?** Congratulations! You're ready to do real research! 🚀

## Remember

- You're running **inside Docker** (good!)
- Files persist in `/workspace` (on your Mac)
- No impact to macOS itself
- Easy to clean up: just delete `/workspace/gem5`

---

**Having trouble?** Read `DOCKER_SETUP.md` for detailed troubleshooting.

**Ready to experiment?** Read `README.md` for what you can do next.

**Happy simulating!** 🎉
