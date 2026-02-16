# UTM Emulation Setup for Apple Silicon Macs

## Your Situation

✅ **Mac Architecture**: `aarch64` (Apple Silicon - M1/M2/M3)  
✅ **Vivado Requirement**: x86_64 Linux only  
✅ **Solution**: Emulate x86_64 Ubuntu in UTM

## Step-by-Step Setup

### Step 1: Choose Emulation Type

In UTM, when you select "Emulate", you'll see options:

**Choose: "Linux (x86_64)"** ✅
- This is what you need for Vivado
- Will run x86_64 Ubuntu (required)

**Don't choose: "Linux (ARM)"** ❌
- Vivado doesn't support ARM Linux
- Won't work for your use case

### Step 2: Download Ubuntu x86_64 ISO

1. Go to: https://ubuntu.com/download/desktop
2. Download: **Ubuntu 22.04 LTS (64-bit)** 
   - Make sure it's the **x86_64/amd64** version
   - File: `ubuntu-22.04.x-desktop-amd64.iso`
   - Size: ~4-5 GB

**Important**: Don't download ARM version!

### Step 3: Configure UTM VM

1. **Name**: `Vivado Ubuntu x86_64`
2. **Architecture**: x86_64 (should be auto-selected)
3. **Memory**: 16 GB (or more if you have 32+ GB RAM)
4. **CPU Cores**: 4-8 cores (more = faster emulation)
5. **Disk**: 100 GB (dynamically allocated)
6. **ISO**: Select Ubuntu x86_64 ISO you downloaded

### Step 4: Install Ubuntu

1. Start VM
2. Follow Ubuntu installation wizard
3. Install normally (same as regular Ubuntu install)
4. Create user account

### Step 5: Verify Architecture

After Ubuntu installs, verify it's x86_64:

```bash
# In Ubuntu VM, run:
uname -m
# Should show: x86_64
```

If it shows `x86_64`, you're good! ✅

### Step 6: Install Vivado

1. Download **Linux x86_64 installer** from Xilinx
2. Transfer to VM (drag & drop works in UTM)
3. Make executable: `chmod +x Xilinx_Unified_*.bin`
4. Run installer: `./Xilinx_Unified_*.bin`
5. Select "Vivado ML Standard Edition" (FREE)

### Step 7: Performance Tips

Since you're emulating (slower than virtualization):

1. **Allocate More RAM**: 16-24 GB if possible
2. **More CPU Cores**: 6-8 cores helps
3. **Use SSD**: Much faster than HDD
4. **Close Other Apps**: Free up resources
5. **Be Patient**: Synthesis takes longer (15-45 min vs 5-15 min)

## Expected Performance

**Emulation on Apple Silicon:**
- Boot time: 30-60 seconds
- Synthesis: 15-45 minutes (depends on design)
- GUI: Responsive but slower than native
- Overall: **Functional and usable** ✅

**Comparison:**
- Native x86_64: ~5-15 min synthesis
- Emulated x86_64: ~15-45 min synthesis
- Still works fine for learning/research!

## Troubleshooting

### VM is Very Slow

1. Increase RAM allocation (16+ GB)
2. Increase CPU cores (4-8)
3. Close other applications
4. Use SSD instead of HDD
5. Check Activity Monitor - make sure Mac isn't swapping

### Ubuntu Won't Boot

1. Make sure you downloaded **x86_64** ISO (not ARM)
2. Verify ISO isn't corrupted
3. Try different Ubuntu version (22.04 LTS recommended)

### Vivado Installation Fails

1. Make sure you're in x86_64 Ubuntu (check `uname -m`)
2. Install required dependencies:
   ```bash
   sudo apt update
   sudo apt install -y libncurses5 libtinfo5
   ```
3. Try running installer with more verbose output

## Alternative: Cloud Option

If emulation is too slow, consider:

**AWS EC2 or Google Cloud:**
- Launch x86_64 Linux instance
- Native performance (no emulation)
- Access via SSH
- Pay per hour (very cheap for learning)

## Summary

✅ **You're on the right track!**

**Your setup:**
- Mac: Apple Silicon (aarch64)
- UTM Option: **"Emulate"** ✅
- Ubuntu: **x86_64 (amd64)** ✅
- Vivado: Will work! ✅

**Next steps:**
1. Download Ubuntu 22.04 x86_64 ISO
2. Create UTM VM with "Emulate" → "Linux (x86_64)"
3. Install Ubuntu
4. Verify: `uname -m` shows `x86_64`
5. Install Vivado Linux x86_64 version
6. Start synthesizing! 🚀
