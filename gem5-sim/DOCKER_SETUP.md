# gem5 Installation with Docker

**Recommended approach for macOS users and consistent environments**

Since you're already using Docker for this project, we'll install gem5 inside your Docker container. This avoids any macOS conflicts and keeps your environment clean and reproducible.

## Why Docker?

✅ **No macOS conflicts** - Everything runs in Linux container  
✅ **Consistent with your workflow** - You're already using Docker  
✅ **Reproducible** - Same environment everywhere  
✅ **Clean** - No installation on your host machine  
✅ **Easy cleanup** - Just rebuild container if needed  

## Two Installation Options

### Option A: Install gem5 Inside Running Container (Recommended - Faster to Start)

**Pros**: Quick start, flexible, easy to experiment  
**Cons**: gem5 not persistent if container is rebuilt  

This is the **recommended approach** for getting started quickly.

### Option B: Add gem5 to Dockerfile (Production - Slower Build)

**Pros**: gem5 built into image, always available  
**Cons**: Slower initial Docker build (~30 min), larger image  

Choose this after you've verified everything works.

---

## Option A: Install gem5 in Running Container (Recommended)

### Step 1: Start Your Dev Container

If not already running:

```bash
# In VS Code: Reopen in Container
# Or manually:
cd /workspaces/LMUL-Hardware-Acceleration
docker build -t lmul-dev .
docker run -it -v "$PWD":/workspace -w /workspace lmul-dev
```

### Step 2: Install gem5 Dependencies (Inside Container)

```bash
# You're now inside the Docker container
apt-get update
apt-get install -y \
    m4 scons \
    zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev \
    libgoogle-perftools-dev \
    libboost-all-dev \
    gcc-arm-linux-gnueabi
```

### Step 3: Clone and Build gem5 (Inside Container)

```bash
cd /workspace  # or /workspaces/LMUL-Hardware-Acceleration
git clone https://github.com/gem5/gem5.git
cd gem5
git checkout stable

# Build (this takes 20-30 minutes)
scons build/ARM/gem5.opt -j$(nproc)
```

### Step 4: Install LMUL Model

```bash
cd /workspace  # or /workspaces/LMUL-Hardware-Acceleration
./gem5/scripts/install_model.sh
```

### Step 5: Build and Run Test

```bash
# Build benchmark
cd gem5/benchmarks/matrix_multiply
make ARCH=arm

# Run test
cd /workspace/gem5
./scripts/run_simulation.sh --test

# View results
python3 scripts/extract_stats.py m5out/stats.txt
```

**Done!** gem5 is now installed in your container.

**Note**: gem5 will persist as long as your container exists. If you rebuild the container from scratch, you'll need to reinstall gem5 (or use Option B below).

---

## Option B: Add gem5 to Dockerfile (Production)

For a more permanent setup, add gem5 to your Dockerfile.

### Updated Dockerfile

Create or update your `Dockerfile`:

```dockerfile
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# Install base dependencies (your existing ones)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential make git \
    python3 python3-pip python3-venv python3-dev python3-tk \
    libffi-dev pkg-config \
    iverilog \
    openssh-client \
    yosys \
    opensta \
    # Add gem5 dependencies
    m4 scons \
    zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev \
    libgoogle-perftools-dev \
    libboost-all-dev \
    gcc-arm-linux-gnueabi \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY requirements.txt .

RUN python3 -m pip install --upgrade pip setuptools wheel
RUN pip install --no-cache-dir -r requirements.txt

# Create lib directory and download Nangate 45nm standard cell library
RUN mkdir -p lib && \
    python3 -c "import urllib.request; urllib.request.urlretrieve('https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/raw/master/flow/platforms/nangate45/lib/NangateOpenCellLibrary_typical.lib', 'lib/NangateOpenCellLibrary_typical.lib')"

# Optional: Pre-build gem5 (adds ~30 min to Docker build, ~2GB to image)
# Uncomment these lines if you want gem5 built into the image:
#
# RUN git clone https://github.com/gem5/gem5.git /opt/gem5 && \
#     cd /opt/gem5 && \
#     git checkout stable && \
#     scons build/ARM/gem5.opt -j$(nproc) && \
#     rm -rf .git build/ARM/*.a build/ARM/*.o
#
# ENV GEM5_ROOT=/opt/gem5
# ENV PATH="/opt/gem5:${PATH}"

CMD ["/bin/bash"]
```

### Build New Image

```bash
# On your host machine (macOS)
cd /workspaces/LMUL-Hardware-Acceleration
docker build -t lmul-dev-gem5 .

# This will take longer (~30 min if gem5 pre-build enabled)
```

### Run Container

```bash
# VS Code will use new image automatically after rebuild
# Or manually:
docker run -it -v "$PWD":/workspace -w /workspace lmul-dev-gem5
```

If you pre-built gem5 in the Dockerfile, it's already available. Otherwise, follow Option A steps inside the container.

---

## Recommended Workflow

**For Learning/Experimentation** (Start here):
1. Use **Option A** (install in running container)
2. gem5 source will be in `/workspace/gem5/`
3. Your workspace is mounted, so gem5 persists on your host

**For Production/Sharing**:
1. Once you've verified everything works
2. Update Dockerfile with dependencies (without pre-building gem5)
3. Include gem5 installation in your project README
4. Team members can install gem5 using same steps

**For Maximum Convenience** (Optional):
1. Pre-build gem5 in Dockerfile (uncomment those lines)
2. Everyone gets gem5 automatically
3. Trade-off: Longer Docker builds, larger images

---

## Storage Considerations

### Where gem5 Lives

With **Option A** (recommended):
```
/workspace/gem5/           # Inside container, but...
  ↓ mounted from ↓
/path/on/mac/gem5/         # Your actual host machine
```

The `/workspace` directory is **mounted** from your host, so:
- ✅ gem5 source code persists on your Mac
- ✅ Survives container restarts
- ✅ Can edit files with Mac tools
- ❌ Lost if you delete the gem5 directory on your Mac
- ✅ Not lost when you rebuild the Docker image

With **Option B** (pre-built):
```
/opt/gem5/                 # Inside Docker image
```
- Built into image
- Always available
- Can't edit easily
- Takes up image space

### Recommended: Use Option A + .gitignore

```bash
# Add to .gitignore
echo "gem5/" >> .gitignore
```

This keeps gem5 out of your git repo (it's large!) but available in your workspace.

---

## Development Workflow

### Daily Usage

```bash
# 1. Start container (VS Code: Reopen in Container)

# 2. Everything is ready
cd /workspace/gem5

# 3. Run simulations
./scripts/run_simulation.sh --size 16

# 4. Modify code if needed
vim models/lmul_accelerator.cc
./scripts/install_model.sh  # Reinstall

# 5. Results persist on your Mac
ls m5out/  # Available even after container stops
```

### Updating gem5

```bash
cd /workspace/gem5
git pull origin stable
scons build/ARM/gem5.opt -j$(nproc)
```

### Clean Rebuild

```bash
cd /workspace/gem5
scons --clean
scons build/ARM/gem5.opt -j$(nproc)
```

---

## Troubleshooting

### "Permission denied" errors

```bash
# If you get permission errors in the container
chmod -R 755 /workspace/gem5
```

### "Out of space" in container

gem5 build needs ~10GB. Increase Docker disk allocation:
- Docker Desktop → Settings → Resources → Disk image size

### Container keeps losing gem5

- Make sure `/workspace` is mounted from your host
- Check your Docker volume settings
- gem5 should be in `/workspace/gem5`, not `/opt/gem5` (unless Option B)

### Slow builds

```bash
# Reduce parallel jobs if running out of memory
scons build/ARM/gem5.opt -j2  # Instead of -j$(nproc)
```

### Want to start fresh

```bash
# Option A (in container):
rm -rf /workspace/gem5
# Then re-clone and rebuild

# Option B (rebuild Docker):
docker build --no-cache -t lmul-dev .
```

---

## Quick Start (TL;DR)

**Already in your Dev Container?**

```bash
# Install dependencies
sudo apt-get update && sudo apt-get install -y \
    m4 scons zlib1g-dev libprotobuf-dev protobuf-compiler \
    libgoogle-perftools-dev libboost-all-dev gcc-arm-linux-gnueabi

# Clone and build gem5
cd /workspace
git clone https://github.com/gem5/gem5.git
cd gem5 && git checkout stable
scons build/ARM/gem5.opt -j$(nproc)  # Wait 20-30 min

# Install LMUL model
cd /workspace
./gem5/scripts/install_model.sh

# Test
cd gem5/benchmarks/matrix_multiply && make ARCH=arm
cd ../.. && ./scripts/run_simulation.sh --test
```

---

## Summary

**Recommended Setup**:
1. Use your existing Docker container ✅
2. Install gem5 dependencies in container (once)
3. Clone gem5 to `/workspace/gem5` (persists on your Mac)
4. Build and use normally
5. Add `gem5/` to `.gitignore`

**This approach**:
- ✅ Works perfectly on macOS
- ✅ Keeps your Mac clean
- ✅ Matches your existing workflow
- ✅ Easy to share with collaborators
- ✅ Reproducible across machines

**Next**: Read `GETTING_STARTED.md` but follow the Docker installation steps above instead of the native Linux installation.
