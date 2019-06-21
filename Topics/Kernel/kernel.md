# The Linux Kernel

- /boot
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

SIDE NOTES:

- `dracut --help` Creates initial ramdisk images for preloading modules

## Modifying the System Bootloader

> yum list kernel
> grub2-set-default

Resources:
