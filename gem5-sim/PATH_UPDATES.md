# Path Updates for gem5-sim Directory Rename

## Summary

The `gem5/` directory was renamed to `gem5-sim/` to avoid conflicts with the actual gem5 repository that will be cloned.

## Updated Files

### Scripts (✅ All Updated)

**`scripts/install_model.sh`**
- ✅ `LMUL_GEM5` now points to `gem5-sim` (our project files)
- ✅ `GEM5_ROOT` points to `gem5` (actual gem5 repo)

**`scripts/run_simulation.sh`**
- ✅ `LMUL_GEM5` now points to `gem5-sim` (our project files)
- ✅ `GEM5_ROOT` points to `gem5` (actual gem5 repo)

**`scripts/verify_setup.sh`**
- ✅ `LMUL_GEM5` now points to `gem5-sim` (our project files)
- ✅ `GEM5_ROOT` points to `gem5` (actual gem5 repo)
- ✅ `BENCHMARK_DIR` uses `LMUL_GEM5`

### Documentation (✅ Key Files Updated)

**`START_HERE_DOCKER.md`**
- ✅ Install command: `./gem5-sim/scripts/install_model.sh`
- ✅ Benchmark build: `cd gem5-sim/benchmarks/matrix_multiply`
- ✅ Run simulation: `cd /workspace/gem5-sim`

**`DOCKER_QUICKSTART.md`**
- ✅ Install command: `./gem5-sim/scripts/install_model.sh`
- ✅ Benchmark build: `cd gem5-sim/benchmarks/matrix_multiply`
- ✅ Daily usage: `cd /workspace/gem5-sim`

## Directory Structure After Update

```
/workspaces/LMUL-Hardware-Acceleration/
├── gem5-sim/                    # ← OUR PROJECT FILES (renamed from gem5/)
│   ├── models/                  # LMUL accelerator model
│   ├── configs/                 # System configurations
│   ├── benchmarks/              # Test programs
│   ├── scripts/                 # Helper scripts
│   └── *.md                     # Documentation
│
└── gem5/                        # ← ACTUAL GEM5 REPO (to be cloned)
    ├── build/
    ├── src/
    │   └── dev/
    │       └── lmul_accel/      # Our model gets installed here
    └── ...
```

## Path Reference Guide

### When writing scripts/docs that reference:

**Our LMUL project files:**
- Use: `gem5-sim/`
- Examples:
  - `./gem5-sim/scripts/install_model.sh`
  - `cd gem5-sim/benchmarks/matrix_multiply`
  - `${LMUL_GEM5}/models/lmul_accelerator.cc`

**Actual gem5 repository:**
- Use: `gem5/`
- Examples:
  - `git clone https://github.com/gem5/gem5.git`
  - `gem5/build/ARM/gem5.opt`
  - `gem5/src/dev/lmul_accel/`
  - `${GEM5_ROOT}/build/ARM/gem5.opt`

## Verification

Run these commands to verify paths are correct:

```bash
# Check scripts reference correct paths
grep "LMUL_GEM5=" gem5-sim/scripts/*.sh
# Should show: gem5-sim

grep "GEM5_ROOT=" gem5-sim/scripts/*.sh
# Should show: gem5

# Check no broken references
grep -r "cd gem5/" gem5-sim/*.md | grep -v "git clone" | grep -v "gem5.org"
# Should be empty or only reference actual gem5 repo

# Verify our project structure
ls gem5-sim/
# Should show: models/ configs/ benchmarks/ scripts/ *.md

# gem5 repo not cloned yet
ls gem5/
# Should not exist yet (or show actual gem5 if already cloned)
```

## Safe to Clone gem5 Now ✅

With these updates, you can safely run:

```bash
cd /workspace
git clone https://github.com/gem5/gem5.git
```

This will create `/workspace/gem5/` without any conflicts with your project files in `/workspace/gem5-sim/`.

## Quick Test After Cloning

```bash
# 1. Clone gem5 (if not done)
cd /workspace
git clone https://github.com/gem5/gem5.git
cd gem5 && git checkout stable

# 2. Build gem5
scons build/ARM/gem5.opt -j$(nproc)

# 3. Install our model (should work correctly now)
cd /workspace
./gem5-sim/scripts/install_model.sh

# This should:
# - Find gem5 at /workspace/gem5 ✓
# - Find our models at /workspace/gem5-sim/models/ ✓
# - Copy files to gem5/src/dev/lmul_accel/ ✓
```

## Summary

✅ **All critical paths updated**  
✅ **Scripts reference gem5-sim for project files**  
✅ **Scripts reference gem5 for actual repository**  
✅ **Documentation updated for Docker workflow**  
✅ **Safe to clone gem5 now**  

No conflicts will occur! 🎉
