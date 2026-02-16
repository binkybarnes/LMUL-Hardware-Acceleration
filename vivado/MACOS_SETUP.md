# Vivado on macOS - Setup Guide

## The Problem

**Xilinx/AMD Vivado does NOT officially support macOS.**

From the download page, you'll see:
- ✅ Windows Self Extracting Web Installer (.exe)
- ✅ Linux Self Extracting Web Installer (.bin)
- ❌ No macOS installer

## Solution: Use Linux Virtual Machine

### Recommended: VirtualBox (Free)

**Step 1: Install VirtualBox**
```bash
# Download from: https://www.virtualbox.org/wiki/Downloads
# Or use Homebrew:
brew install --cask virtualbox
```

**Step 2: Download Ubuntu**
- Download Ubuntu 22.04 LTS: https://ubuntu.com/download/desktop
- Get the ISO file (~4 GB)

**Step 3: Create VM**
1. Open VirtualBox
2. Click "New"
3. Settings:
   - **Name**: Vivado Linux
   - **Type**: Linux
   - **Version**: Ubuntu (64-bit)
   - **Memory**: 16384 MB (16 GB) - adjust based on your Mac's RAM
   - **Hard disk**: 100 GB (dynamically allocated)
4. Click "Create"

**Step 4: Install Ubuntu**
1. Start VM
2. Select Ubuntu ISO as boot disk
3. Follow Ubuntu installation wizard
4. Install Guest Additions (for better performance)

**Step 5: Install Vivado in VM**
1. Download **Linux .bin installer** (346.7 MB) from Xilinx
2. Transfer to VM (drag & drop or shared folder)
3. Make executable: `chmod +x Xilinx_Unified_*.bin`
4. Run installer: `./Xilinx_Unified_*.bin`
5. Follow installation steps
6. Get free Standard Edition license

### Alternative: UTM (Better for Apple Silicon)

**For M1/M2/M3 Macs:**
1. Download UTM: https://mac.getutm.app/
2. Create Linux VM
3. Better performance than VirtualBox on Apple Silicon

### Alternative: Parallels (Paid, Best Performance)

**If you have Parallels Desktop:**
1. Create Linux VM in Parallels
2. Install Vivado Linux version
3. Best macOS integration and performance

## Which Download to Get?

**For Linux VM:**
- Download: **Linux Self Extracting Web Installer (.bin - 346.7 MB)**
- This is the web installer that downloads components as needed
- Smaller initial download, downloads rest during installation

**Alternative:**
- **Full Install TAR/GZIP (95.69 GB)**: Only if you want offline installation
- Not recommended unless you have slow/unreliable internet

## Quick Start After VM Setup

```bash
# In Linux VM, after installing Vivado:

# 1. Source Vivado settings
source /opt/Xilinx/Vivado/2025.2/settings64.sh

# 2. Verify installation
vivado -version

# 3. Launch GUI
vivado

# 4. Get free license (if not done during install)
# Help → Manage License → Get Free License
```

## Using Vivado from macOS Host

### Option 1: Use VM GUI
- Just use Vivado GUI inside the VM
- Works well for interactive work

### Option 2: Command-Line from macOS
```bash
# SSH into VM
ssh user@vm-ip

# Run Vivado commands
vivado -mode batch -source script.tcl
```

### Option 3: Shared Folders
- Set up shared folder between macOS and VM
- Edit files on macOS, run Vivado in VM
- Files sync automatically

## System Requirements for VM

**Minimum:**
- Mac with 16 GB RAM (8 GB for Mac, 8 GB for VM)
- 100 GB free disk space
- Intel or Apple Silicon Mac

**Recommended:**
- Mac with 32 GB RAM (16 GB for Mac, 16 GB for VM)
- 200 GB free disk space
- SSD for better performance

## Performance Tips

1. **Allocate enough RAM**: 16 GB to VM if you have 32 GB total
2. **Use SSD**: Much faster than HDD
3. **Enable hardware acceleration**: In VM settings
4. **Install Guest Additions**: Better graphics performance
5. **Close other apps**: Free up RAM for VM

## Troubleshooting

### VM is Slow:
- Increase RAM allocation
- Enable hardware acceleration
- Use SSD instead of HDD
- Close other applications

### Can't Install Guest Additions:
- In VirtualBox: Devices → Insert Guest Additions CD
- Or download manually and install

### Vivado License Issues:
- Make sure you got free Standard Edition license
- Help → Manage License → Get Free License

## Alternative: Cloud/Remote Linux

If VM doesn't work for you:

1. **AWS EC2**: Launch Linux instance, install Vivado
2. **University Linux Server**: If available
3. **Remote Linux Machine**: Via SSH

Then use:
- X11 forwarding for GUI: `ssh -X user@remote`
- Or VNC for remote desktop
- Or command-line only (batch mode)

## Summary

**For macOS:**
1. ❌ Don't download Windows .exe (won't work)
2. ❌ Don't download Linux .bin directly (won't run on macOS)
3. ✅ **Download Linux .bin for use in Linux VM**
4. ✅ Set up VirtualBox/UTM/Parallels
5. ✅ Install Ubuntu in VM
6. ✅ Install Vivado Linux version in VM
7. ✅ Use Vivado inside VM

**Recommended Download:**
- **Linux Self Extracting Web Installer (.bin - 346.7 MB)**
