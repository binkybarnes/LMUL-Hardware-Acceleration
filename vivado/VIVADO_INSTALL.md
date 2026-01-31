# Vivado Installation Guide

## Where to Download

**Official Website:**
- **URL**: https://www.xilinx.com/support/download.html
- Navigate to: **Vivado Design Suite** → **Download**

## Which Version to Download

### Recommended: Vivado ML Standard Edition (Latest)

**Latest Version (as of 2025):**
- **Vivado ML Standard Edition 2025.2** (or latest available)
- Check Xilinx website for most recent release: https://www.xilinx.com/support/download.html

**Why Latest Version?**
- Best optimization and features
- Good support for modern FPGAs
- Free Standard Edition license covers most devices
- Better documentation and tutorials

### Version Options:

1. **Vivado ML Standard Edition** (Recommended - FREE)
   - Latest version (2025.2+)
   - Free license (formerly called "WebPack")
   - Supports Artix-7, Kintex-7, Zynq-7000, and more
   - Perfect for learning and research

2. **Vivado HLx Edition** (Older)
   - Older naming convention
   - Still works fine
   - 2023.2 or 2023.1 are good choices if you need older version

## License Type: Standard Edition (FREE)

**Important**: You need the **Standard Edition** license, which is **FREE**!
(Previously called "WebPack" - now renamed to "Standard Edition")

**What Standard Edition Includes:**
- ✅ Full synthesis and implementation
- ✅ Simulation tools
- ✅ IP generators (BRAM, AXI, etc.)
- ✅ Most Artix-7, Kintex-7, Zynq-7000 devices
- ✅ Perfect for learning and research

**What Standard Edition Does NOT Include:**
- ❌ Some high-end devices (Virtex-7, UltraScale+)
- ❌ Advanced debugging features (not needed for this project)

**How to Get License:**
1. Create free Xilinx account at https://www.xilinx.com/registration.html
2. Download Vivado installer
3. During installation, select "Standard Edition" (free)
4. After installation, launch Vivado
5. Go to: Help → Manage License → Get Free License
6. Select "Vivado ML Standard Edition" or "Vivado HL WebPACK"
7. Follow prompts to generate and install license

## Download Steps

### Step 1: Create Xilinx Account
1. Go to: https://www.xilinx.com/registration.html
2. Fill out registration form
3. Verify email

### Step 2: Download Vivado
1. Go to: https://www.xilinx.com/support/download.html
2. Click "Vivado Design Suite" or "Vivado ML Edition"
3. Select latest version (e.g., "Vivado ML Standard Edition 2025.2")
4. **Important**: Choose "Unified Installer" (recommended - smaller download)
5. Choose your OS:
   - **Linux**: `.bin` file (Linux Self Extracting Web Installer - 346.7 MB)
   - **Windows**: `.exe` file (Windows Self Extracting Web Installer - 233.33 MB)
   - **Full Install**: `.tar.gz` SFD file (95.69 GB - for offline install)
   - **Mac**: Not officially supported - see `MACOS_SETUP.md` for options

### Step 3: Download Size
- **Full Install**: ~50-80 GB (includes all devices)
- **Single Device Install**: ~20-30 GB (select specific FPGA)
- **Recommendation**: Full install (you have space)

### Step 4: Installation Options

**For Linux (Recommended for this project):**
```bash
# Extract downloaded file
tar -xzf Xilinx_Unified_2025.2_*.tar.gz

# Run installer
cd Xilinx_Unified_2025.2_*/
sudo ./xsetup

# Follow installer:
# 1. Select "Vivado ML Standard Edition" (FREE)
# 2. Choose installation directory (default: /opt/Xilinx/)
# 3. Select devices (or "All" for full install)
# 4. Wait for installation (30-60 minutes)
```

**After Installation - Get Free License:**
```bash
# Launch Vivado
vivado

# In Vivado GUI:
# Help → Manage License → Get Free License
# Select "Vivado ML Standard Edition"
# Follow prompts to generate license
```

**For Windows:**
1. Run `.exe` installer
2. Follow GUI installer
3. Select "Vivado ML Standard Edition" (FREE)
4. Choose installation directory
5. Select devices (or "All" for full install)
6. Wait for installation
7. After installation, launch Vivado and get free license:
   - Help → Manage License → Get Free License
   - Select "Vivado ML Standard Edition"

## System Requirements

### Minimum Requirements:
- **RAM**: 8 GB (16 GB recommended)
- **Disk Space**: 100 GB free
- **OS**: 
  - Linux: Ubuntu 18.04+, RHEL 7+, CentOS 7+
  - Windows: Windows 10/11 (64-bit)
- **CPU**: Multi-core recommended

### Recommended:
- **RAM**: 16 GB+
- **Disk Space**: 200 GB+ (for full install)
- **SSD**: Recommended for faster performance

## Post-Installation Setup

### Linux:
```bash
# Add to ~/.bashrc or ~/.zshrc
source /opt/Xilinx/Vivado/2025.2/settings64.sh

# Or for specific shell:
export PATH=$PATH:/opt/Xilinx/Vivado/2025.2/bin

# Note: Replace 2025.2 with your actual version number
```

### Windows:
- Vivado should be in PATH automatically
- Launch from Start Menu: "Vivado 2024.1"

### Verify Installation:
```bash
vivado -version
# Should show: Vivado v2025.2 (or your version)
```

### Get Free License (Important!):
1. Launch Vivado: `vivado`
2. In GUI: **Help → Manage License**
3. Click **"Get Free License"**
4. Select **"Vivado ML Standard Edition"** or **"Vivado HL WebPACK"**
5. Follow prompts (may require Xilinx account login)
6. License will be generated and installed automatically

## Quick Test

```bash
# Launch Vivado GUI
vivado

# Or create project from command line
vivado -mode gui
```

## macOS Installation (Not Officially Supported)

**Important**: Xilinx/AMD Vivado does **NOT** officially support macOS.

### Option 1: Linux Virtual Machine (Recommended)

**Using VirtualBox (Free):**
1. Download VirtualBox: https://www.virtualbox.org/
2. Download Ubuntu 22.04 LTS ISO
3. Create VM with:
   - 8+ GB RAM (16 GB recommended)
   - 100+ GB disk space
   - Enable virtualization in VM settings
4. Install Ubuntu in VM
5. Install Vivado Linux version inside VM
6. Works well for synthesis and simulation

**Using Parallels (Paid, Better Performance):**
- Similar to VirtualBox but better macOS integration
- Better performance than VirtualBox

**Using UTM (Free, Apple Silicon Compatible):**
- Good for M1/M2 Macs
- Download: https://mac.getutm.app/
- Create Linux VM and install Vivado

### Option 2: Docker (If Available)

**Requirements:**
- Docker Desktop for Mac
- Xilinx license server access (or use Standard Edition free license)

**Steps:**
```bash
# Some organizations provide Vivado Docker images
# Check if your university/lab has Docker images
docker pull <vivado-image>
docker run -it <vivado-image>
```

**Note**: Docker approach may have limitations with GUI.

### Option 3: Cloud/Remote Linux Machine

**Options:**
- AWS EC2 (Linux instance)
- Google Cloud Platform
- University Linux servers
- Remote Linux machine via SSH

**Workflow:**
1. Install Vivado on Linux machine
2. Use X11 forwarding or VNC for GUI
3. Or use command-line only (batch mode)

### Option 4: Dual Boot or Boot Camp (Intel Macs Only)

- Install Linux alongside macOS
- Boot into Linux for Vivado work
- Not available on Apple Silicon (M1/M2/M3)

### Option 5: Command-Line Only (No GUI)

If you only need synthesis (no GUI):
```bash
# Download Linux .bin installer
# Try running with compatibility layer (not guaranteed to work)
# Or use in Linux VM/Docker
```

### Recommendation for macOS Users:

**Best Option**: **Linux Virtual Machine (VirtualBox or UTM)**
- ✅ Free
- ✅ Works reliably
- ✅ Full Vivado functionality
- ✅ Easy to set up
- ⚠️ Requires 8-16 GB RAM and 100+ GB disk

**Quick Setup:**
1. Install VirtualBox or UTM
2. Create Ubuntu 22.04 VM
3. Allocate 16 GB RAM, 100 GB disk
4. Install Vivado Linux version inside VM
5. Use Vivado GUI or command-line as needed

## Troubleshooting

### License Issues:
- **Problem**: "No license found" or "License check failed"
- **Solution**: 
  1. Launch Vivado
  2. Go to: **Help → Manage License → Get Free License**
  3. Select "Vivado ML Standard Edition"
  4. Follow prompts to generate license
  5. License will be saved automatically

### Installation Fails:
- **Problem**: Installation stops or errors
- **Solution**: 
  - Check disk space (need 100+ GB)
  - Check system requirements
  - Try single-device install instead of full

### Can't Find Vivado:
- **Problem**: `vivado: command not found`
- **Solution**: Source settings script (see Post-Installation Setup)

## For This Project

**Recommended FPGA Part:**
- **Artix-7**: `xc7a100tcsg324-1` (common, well-supported)
- **Kintex-7**: `xc7k70tfbg676-1` (if you have access)
- **Zynq-7000**: `xc7z020clg400-1` (if you want ARM processor)

**All of these are supported by WebPack license!**

## Next Steps After Installation

1. ✅ Verify installation: `vivado -version`
2. ✅ Create project using provided Tcl script:
   ```bash
   cd /workspaces/LMUL-Hardware-Acceleration
   vivado -mode batch -source vivado/scripts/create_project.tcl
   ```
3. ✅ Open project: `vivado vivado/lmul_accelerator/lmul_accelerator.xpr`
4. ✅ Run synthesis and explore!

## Summary

- **Download from**: https://www.xilinx.com/support/download.html
- **Version**: 2025.2 or latest (Vivado ML Standard Edition)
- **License**: Standard Edition (FREE - get after installation)
- **Size**: ~50-80 GB for full install (or ~20-30 GB for single device)
- **Time**: 30-60 minutes installation + 5 minutes for license
- **Account**: Free Xilinx account required
- **License Setup**: After installation, use Help → Manage License → Get Free License
