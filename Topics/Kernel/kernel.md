# The Linux Kernel

## Commands

uname : 
lsmod : kernel modules that are loaded into memory
modinfo : 
modprode : loads a kernel module into memory

*udev* Linux is the device manager
*sysfs* pseudo file system

- /boot
- /dev
- /proc : pseudo file system contains the processes that are currently running on the system
- /proc/sys/kernel

## Update the Kernel Package Appropriately to Ensure a Bootable System

All Information
> uname -a
Kernal Version
> uname -r
> rpm --query centos-release
Automatically updates the kernel
> yum upgrade
Check Kernel in repos
> yum list kernel
> yumdownloader kernel

Installing (with firmware dependecies too)
> yum install linux-firmware
> rpm -ivh kernel-3.10.0-957.12.2.el7.x86_64.rpm

## Listing and Removing a kernel modules

> lsmod
> modinfo floppy
> modprode -r floppy
> modprode floppy
> lsmod

SIDE NOTES:

- `dracut --help` Creates initial ramdisk images for preloading modules

## Modifying the System Bootloader

> yum list kernel
> grub2-set-default

Resources:
