# Virtualization About

## Types

- KVM
- QEMU
- VMware
- Xen
- Virtual Box

## Virtualization

Full Vitualization
Paravirtualization
Cloud Virtualization

## Containerization

Machine Containers, share a kenel and file system with the host computer
APPlication Container, shares everything but the application files and library files that the application neeeds

Docker
nspawn (from systemd)
LXD
OpenShift

## Why the Differences

Virtualization:

- Invented to allow the sharing yet segregation of server instances from each ohter
- Protect one operating system from another
- Prevention of letting spare CPU cycles, memory, or disk space go to waste
- The are based on emulating virtual hardware through a hypervisor; heavy in terms of system requirements

Containers:

- Use shared operating systems
- More efficient in system resource terms
- More granular management of system resources
