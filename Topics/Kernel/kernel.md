# The Linux Kernel

- /boot

## Update the Kernel Package Appropriately to Ensure a Bootable System

All Information
> uname -a
Kernal Version
> uname -r
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

## Linux Kernel Security

Developing a hardened image for general use. You must create a list of possible configuration changes that should be further investigated for optimal security on general purpose servers. Below will get a list of possible kernel parameters to ensure the address space layout randomization is in effect and to examine possible network security configurations for ICMP, configured system limits managed by pam_limits.so

- /usr/share/doc/kernel-doc-3.10.0/Documentation/sysctl/kernel.txt
- /etc/security/limits.conf

Find and Document the Value of the randomize_va_space Parameter
> sudo yum install kernel-doc
> sysctl -ar randomize_va

Temporarily Disable ICMP Using a Kernel Parameter
> sysctl -ar icmp
> sudo sysctl -w net.ipv4.icmp_echo_ignore_all=1