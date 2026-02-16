# Adding gem5 to Docker Setup

## Current Situation

✅ **Good news**: Your `/workspace` directory is **mounted** from your Mac, so:
- gem5 build in `/workspace/gem5/` **already persists** across container restarts
- You don't lose the build when you restart the container
- Files are on your Mac filesystem, not just in the container

## Options for Docker Integration

### Option 1: Add Dependencies Only (Recommended ✅)

**What it does**: Adds gem5 build tools to Dockerfile so they're always available

**Pros**: 
- Fast Docker rebuilds (~2 min)
- Small image size
- You build gem5 once manually, it persists

**Cons**:
- Need to build gem5 manually the first time

**How to use**:
```bash
# Dockerfile already updated with gem5 dependencies!
# Just rebuild your container:
# VS Code: Rebuild Container
# Or: docker build -t lmul-dev .

# Then build gem5 once (it persists):
cd /workspace
git clone https://github.com/gem5/gem5.git
cd gem5 && git checkout stable
scons build/ARM/gem5.opt -j1  # or -j4 if you have 8GB+ Docker memory
```

### Option 2: Auto-Build on Container Creation

**What it does**: Automatically clones and builds gem5 when container first starts

**Pros**:
- Fully automated
- No manual steps

**Cons**:
- **Very slow** first container creation (30-60 min)
- Large image size
- Rebuilds gem5 if you rebuild container

**How to use**:
1. Copy `.devcontainer/devcontainer.json.gem5` to `.devcontainer/devcontainer.json`
2. Rebuild container (will take 30-60 min first time)
3. gem5 will be ready automatically

### Option 3: Pre-Build in Dockerfile (Not Recommended)

**What it does**: Builds gem5 into the Docker image itself

**Pros**:
- gem5 always available

**Cons**:
- **Very slow** Docker builds (30+ min)
- **Huge** image size (~2GB+)
- Everyone who pulls image gets gem5 (even if they don't need it)

**How to use**:
1. Uncomment the gem5 build section in `Dockerfile.gem5`
2. Build: `docker build -f Dockerfile.gem5 -t lmul-dev-gem5 .`
3. Wait 30+ minutes

## My Recommendation: Option 1 ✅

**Why**: 
- Your workspace is mounted, so gem5 build **already persists**
- You only need to build gem5 **once**
- Fast container rebuilds
- Flexible - you control when to build

**Steps**:
1. ✅ Dockerfile already has gem5 dependencies (just updated!)
2. Rebuild container: VS Code → Rebuild Container
3. Build gem5 once:
   ```bash
   cd /workspace
   git clone https://github.com/gem5/gem5.git
   cd gem5 && git checkout stable
   scons build/ARM/gem5.opt -j1  # or -j4 with 8GB Docker memory
   ```
4. Done! gem5 persists across restarts

## Verification

After building gem5, verify it persists:

```bash
# Build gem5
cd /workspace/gem5 && scons build/ARM/gem5.opt -j1

# Restart container (VS Code: Reopen in Container)
# Or: exit and docker run again

# Check gem5 still exists
ls /workspace/gem5/build/ARM/gem5.opt
# ✅ Should still be there!
```

## Summary

| Approach | Build Time | Image Size | Persistence | Recommendation |
|----------|-----------|------------|------------|---------------|
| Dependencies only | 2 min | Small | ✅ Yes (mounted) | ⭐ **Best** |
| Auto-build on create | 30-60 min | Small | ✅ Yes (mounted) | Good for automation |
| Pre-build in image | 30+ min | ~2GB | ✅ Yes (in image) | Not recommended |

**Bottom line**: Since `/workspace` is mounted, gem5 **already persists**. Just add dependencies to Dockerfile (done!) and build gem5 once manually.
