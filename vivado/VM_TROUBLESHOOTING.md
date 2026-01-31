# VM Boot Failure Troubleshooting

## Symptoms You're Seeing

- Plymouth (boot splash) crashing
- Multiple systemd services failing
- Libraries showing as "(deleted)"
- udev, polkit, accounts-daemon failing
- System unable to complete boot

## Common Causes & Solutions

### Solution 1: Re-download Ubuntu ISO (Most Common Fix)

**Problem**: Corrupted ISO file

**Fix**:
1. **Delete current ISO** and re-download
2. Go to: https://ubuntu.com/download/desktop
3. Download **Ubuntu 22.04 LTS x86_64** again
4. **Verify checksum** (optional but recommended):
   ```bash
   # On your Mac, check SHA256
   shasum -a 256 ubuntu-22.04.x-desktop-amd64.iso
   # Compare with Ubuntu's published checksum
   ```
5. Create new VM with fresh ISO
6. Don't reuse corrupted VM - start fresh

### Solution 2: Increase VM Resources

**Problem**: Insufficient RAM/CPU causing boot failures

**Fix**:
1. **Delete current VM**
2. Create new VM with:
   - **RAM**: 16 GB minimum (if you have 32 GB total)
   - **CPU Cores**: 4-6 cores
   - **Disk**: 100 GB (dynamically allocated)
3. **Enable hardware acceleration** (if available in UTM)

### Solution 3: Try Different Ubuntu Version

**Problem**: Compatibility issue with specific Ubuntu version

**Fix**:
1. Try **Ubuntu 20.04 LTS** instead of 22.04
   - More stable, older kernel
   - Still works with Vivado
2. Or try **Ubuntu 24.04 LTS** (newer)
3. Download from: https://ubuntu.com/download/desktop

### Solution 4: Check UTM Settings

**Problem**: Incorrect UTM configuration

**Fix**:
1. **Architecture**: Make sure it's set to **x86_64** (not ARM)
2. **Emulation**: QEMU x86_64 (should be auto-selected)
3. **Hardware**:
   - Enable "Use Hypervisor" if available
   - Enable "Use Rosetta" (for Apple Silicon - helps with x86_64 emulation)
4. **Display**: 
   - Try "SPICE" display (better compatibility)
   - Or "VirtIO" if SPICE doesn't work

### Solution 5: Try Minimal Install

**Problem**: Full Ubuntu install has issues

**Fix**:
1. Download **Ubuntu Server** instead of Desktop
   - Smaller, more stable
   - No GUI (but you can add it later)
   - Less likely to have boot issues
2. Or use **Ubuntu Minimal ISO**
3. Install command-line only, add GUI later if needed

### Solution 6: Use Different VM Software

**Problem**: UTM-specific issues

**Alternatives**:
1. **VirtualBox** (free, cross-platform)
   - More mature, better compatibility
   - Download: https://www.virtualbox.org/
2. **Parallels** (paid, best performance)
   - If you have it, try Parallels instead
3. **VMware Fusion** (paid)
   - Good alternative

## Step-by-Step Recovery

### Option A: Fresh Start (Recommended)

1. **Delete current VM** in UTM
2. **Re-download Ubuntu ISO** (verify it's not corrupted)
3. **Create new VM** with these settings:
   ```
   Name: Vivado Ubuntu
   Architecture: x86_64
   RAM: 16 GB
   CPU: 4-6 cores
   Disk: 100 GB
   Display: SPICE
   ```
4. **Install Ubuntu** from scratch
5. **Don't skip updates** during installation

### Option B: Try Ubuntu Server First

1. Download **Ubuntu Server 22.04 LTS x86_64**
2. Create VM with same settings
3. Install server version (no GUI)
4. If this boots successfully, the issue was with Desktop version
5. You can add GUI later: `sudo apt install ubuntu-desktop-minimal`

### Option C: Use Pre-built VM

1. Check UTM Gallery for pre-built Ubuntu VMs
2. Download pre-configured Ubuntu VM
3. May save time if you're having persistent issues

## Verification Steps

After fresh install, verify:

```bash
# Check architecture
uname -m
# Should show: x86_64

# Check system is working
systemctl status
# Should show active services, not failures

# Update system
sudo apt update
sudo apt upgrade -y
```

## If Nothing Works: Alternative Approach

### Cloud Linux Instance

If VM continues to fail:

1. **AWS EC2** (free tier available)
   - Launch Ubuntu 22.04 instance
   - Native x86_64 performance
   - Access via SSH
   - Install Vivado there

2. **Google Cloud** (free credits)
   - Similar to AWS
   - Launch Linux instance

3. **University Linux Server**
   - Many universities provide Linux servers
   - Access via SSH
   - Native performance

## Quick Fix Checklist

Try in this order:

- [ ] Re-download Ubuntu ISO (verify checksum)
- [ ] Delete old VM, create fresh one
- [ ] Increase RAM to 16 GB
- [ ] Try Ubuntu 20.04 instead of 22.04
- [ ] Try Ubuntu Server (no GUI)
- [ ] Check UTM settings (architecture, display)
- [ ] Try VirtualBox instead of UTM
- [ ] Consider cloud Linux instance

## Most Likely Fix

**90% of the time**: Corrupted ISO download

**Solution**:
1. Delete current ISO
2. Re-download Ubuntu 22.04 LTS x86_64
3. Verify download completed (check file size)
4. Create fresh VM
5. Install from scratch

## After Successful Boot

Once Ubuntu boots successfully:

1. ✅ Verify: `uname -m` shows `x86_64`
2. ✅ Update: `sudo apt update && sudo apt upgrade -y`
3. ✅ Install Vivado
4. ✅ Configure environment

## Summary

Your VM boot failure is likely due to:
- Corrupted ISO download (most common)
- Insufficient resources
- UTM configuration issue

**Quick fix**: Re-download ISO, create fresh VM with 16 GB RAM, try again.
