# Ubuntu Setup for Vivado

This guide covers setting up Ubuntu for Vivado, whether in a VM or on a native Linux machine.

## Option 1: Ubuntu in Virtual Machine (For macOS/Windows Users)

### Step 1: Download Ubuntu

1. Go to: https://ubuntu.com/download/desktop
2. Download **Ubuntu 22.04 LTS** (Long Term Support - recommended)
   - File: `ubuntu-22.04.x-desktop-amd64.iso`
   - Size: ~4-5 GB
   - Why 22.04? Stable, well-supported, good for Vivado

### Step 2: Create Virtual Machine

#### Using VirtualBox:

1. **Install VirtualBox** (if not already installed)
   ```bash
   # macOS
   brew install --cask virtualbox
   
   # Or download from: https://www.virtualbox.org/wiki/Downloads
   ```

2. **Create New VM**
   - Open VirtualBox
   - Click "New" button
   - **Name**: `Vivado Ubuntu`
   - **Type**: Linux
   - **Version**: Ubuntu (64-bit)
   - **Memory**: 16384 MB (16 GB) - adjust based on your host RAM
   - **Hard disk**: 100 GB (dynamically allocated)
   - Click "Create"

3. **Configure VM Settings**
   - Right-click VM → Settings
   - **System → Processor**: 
     - Enable "Enable PAE/NX" (if available)
     - Set CPUs to 2-4 cores
   - **Display → Video Memory**: 128 MB
   - **Storage**: 
     - Click empty CD icon
     - Click disk icon on right
     - Choose "Choose a disk file"
     - Select Ubuntu ISO you downloaded
   - Click "OK"

#### Using UTM (For Apple Silicon Macs):

1. **Download UTM**: https://mac.getutm.app/

2. **Create VM**
   - Click "+" to create new VM
   - Choose "Virtualize"
   - Choose "Linux"
   - Select Ubuntu ISO
   - Configure:
     - RAM: 16 GB
     - CPU: 4 cores
     - Disk: 100 GB
   - Click "Save"

### Step 3: Install Ubuntu

1. **Start VM**
   - Select your VM
   - Click "Start"

2. **Ubuntu Installation**
   - Select "Install Ubuntu"
   - Choose language, keyboard layout
   - **Installation type**: 
     - Select "Erase disk and install Ubuntu" (safe in VM)
     - Or "Something else" for custom partitioning
   - Set up user account:
     - Your name
     - Username (remember this!)
     - Password (remember this!)
   - Wait for installation (~10-20 minutes)
   - **Restart** when prompted

3. **First Boot**
   - Login with your credentials
   - Ubuntu desktop should appear

### Step 4: Install Guest Additions (VirtualBox) or SPICE Tools (UTM)

#### For VirtualBox:

1. **In Ubuntu VM:**
   ```bash
   # Update system
   sudo apt update
   sudo apt upgrade -y
   
   # Install build tools
   sudo apt install -y build-essential dkms linux-headers-$(uname -r)
   
   # In VirtualBox menu: Devices → Insert Guest Additions CD
   # Or manually mount:
   sudo mount /dev/cdrom /mnt
   cd /mnt
   sudo ./VBoxLinuxAdditions.run
   
   # Reboot
   sudo reboot
   ```

2. **After reboot:**
   - Screen resolution should be better
   - Shared folders/clipboard should work

#### For UTM:

1. **Install SPICE tools** (if available)
   - Usually auto-installed
   - Check UTM documentation

### Step 5: Update Ubuntu

```bash
# Update package lists
sudo apt update

# Upgrade all packages
sudo apt upgrade -y

# Install essential tools
sudo apt install -y \
    build-essential \
    git \
    curl \
    wget \
    vim \
    net-tools \
    software-properties-common
```

### Step 6: Install Vivado

1. **Download Vivado Linux Installer**
   - Go to: https://www.xilinx.com/support/download.html
   - Download: **Linux Self Extracting Web Installer (.bin - 346.7 MB)**

2. **Transfer to VM** (if needed)
   - **VirtualBox**: Drag & drop, or use shared folder
   - **UTM**: Drag & drop usually works
   - Or download directly in VM using browser

3. **Make Installer Executable**
   ```bash
   cd ~/Downloads  # or wherever you saved it
   chmod +x Xilinx_Unified_2025.2_*.bin
   ```

4. **Run Installer**
   ```bash
   ./Xilinx_Unified_2025.2_*.bin
   ```

5. **Follow Installation Wizard**
   - Accept license
   - Select "Vivado ML Standard Edition" (FREE)
   - Choose installation directory (default: `/opt/Xilinx/`)
   - Select devices (or "All" for full install)
   - Wait for installation (30-60 minutes, downloads components)

6. **Get Free License** (After Installation)
   ```bash
   # Launch Vivado
   /opt/Xilinx/Vivado/2025.2/bin/vivado
   
   # In GUI: Help → Manage License → Get Free License
   # Select "Vivado ML Standard Edition"
   # Follow prompts
   ```

### Step 7: Configure Vivado Environment

Add to `~/.bashrc`:

```bash
# Add to end of ~/.bashrc
source /opt/Xilinx/Vivado/2025.2/settings64.sh
```

Then reload:
```bash
source ~/.bashrc
```

Or add to `~/.profile` (for login shells):
```bash
echo 'source /opt/Xilinx/Vivado/2025.2/settings64.sh' >> ~/.profile
```

### Step 8: Verify Installation

```bash
# Check Vivado version
vivado -version

# Should show: Vivado v2025.2 (or your version)

# Launch Vivado GUI
vivado

# Or run in batch mode
vivado -mode batch -source script.tcl
```

## Option 2: Native Ubuntu Installation (For Linux Machines)

### Step 1: Install Ubuntu

1. **Download Ubuntu 22.04 LTS**
   - https://ubuntu.com/download/desktop
   - Create bootable USB: Use `balenaEtcher` or `dd` command

2. **Boot from USB**
   - Restart computer
   - Boot from USB (may need to change BIOS settings)
   - Follow Ubuntu installation wizard

3. **Partitioning** (if dual-booting)
   - Choose "Install alongside Windows" or "Something else"
   - Allocate 100+ GB for Ubuntu
   - Create swap partition (equal to RAM size)

4. **Complete Installation**
   - Set up user account
   - Wait for installation
   - Reboot

### Step 2: Update System

```bash
sudo apt update
sudo apt upgrade -y

# Install essential tools
sudo apt install -y \
    build-essential \
    git \
    curl \
    wget \
    vim \
    net-tools \
    software-properties-common
```

### Step 3: Install Vivado

Follow **Step 6** from Option 1 above.

### Step 4: Configure Environment

Follow **Step 7** from Option 1 above.

## Post-Installation: Set Up Project

### Create Vivado Project

```bash
# Navigate to project directory
cd /workspaces/LMUL-Hardware-Acceleration

# Create Vivado project (if Tcl script exists)
vivado -mode batch -source vivado/scripts/create_project.tcl

# Or create manually
vivado
# File → New Project → Follow wizard
```

### Test with Simple Design

```bash
# Create test project
vivado -mode gui

# In Vivado:
# 1. Create new project
# 2. Add source files
# 3. Run Synthesis
# 4. Check for errors
```

## Troubleshooting

### Vivado Not Found After Installation

```bash
# Check if installed
ls /opt/Xilinx/Vivado/

# Source settings manually
source /opt/Xilinx/Vivado/2025.2/settings64.sh

# Add to ~/.bashrc (see Step 7 above)
```

### License Issues

```bash
# Launch Vivado
vivado

# Help → Manage License → Get Free License
# Select "Vivado ML Standard Edition"
# Follow prompts
```

### VM Performance Issues

**VirtualBox:**
- Increase RAM allocation
- Enable 3D acceleration: Settings → Display → Enable 3D Acceleration
- Install Guest Additions (see Step 4)
- Use SSD instead of HDD

**UTM:**
- Allocate more RAM
- Use SPICE display (better performance)
- Enable hardware acceleration

### Shared Folders Not Working (VirtualBox)

```bash
# Install Guest Additions (see Step 4)
# Then in VirtualBox: Devices → Shared Folders → Shared Folder Settings
# Add folder, check "Auto-mount"
```

### Network Issues in VM

```bash
# Check network
ip addr show

# Restart network
sudo systemctl restart NetworkManager

# If using NAT (default), should work automatically
```

## System Requirements

### Minimum:
- **RAM**: 8 GB (16 GB recommended)
- **Disk**: 100 GB free
- **CPU**: 2+ cores

### Recommended:
- **RAM**: 16 GB
- **Disk**: 200 GB (SSD preferred)
- **CPU**: 4+ cores

## Quick Reference Commands

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install packages
sudo apt install -y <package-name>

# Check Vivado
vivado -version

# Launch Vivado GUI
vivado

# Run Vivado batch mode
vivado -mode batch -source script.tcl

# Source Vivado settings
source /opt/Xilinx/Vivado/2025.2/settings64.sh
```

## Next Steps

After Ubuntu and Vivado are set up:

1. ✅ Verify Vivado works: `vivado -version`
2. ✅ Create project: Use provided Tcl script or GUI
3. ✅ Run synthesis: Test with simple design
4. ✅ Explore pipeline: Use provided accelerator design

See `vivado/README.md` for project-specific instructions.
