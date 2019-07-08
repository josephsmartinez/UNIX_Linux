# Booting process

## Commands

- `dmesg`
- `journalctl -k`

## Typical Boot Process

`BIOS, MBR, boot loader, kernel, device initialization, root file system mount`

1. BIOS

- UEFI
- Legacy

2: Boot Sector

- Master Boot Record (MBR) disks use the standard BIOS partition table. 
- GUID Partition Table (GPT) disks use Unified Extensible Firmware Interface (UEFI)

3: Linux Kernel

4: Initialization  (init, upstart (old), sysvinit(old))

Run Levels

0 | Halt
1 | Single user mode
2 | Multi user mode (without networking)
3 | Multi user (with networking)
4 | unused
5 | Multi user with networking and graphical desktop
6 | Reboot

- /sbin/init
- /etc/inittab
- /etc/rc.d (RHEL)
File name convenstions <kill or start><order number>
- /etc/init.d (Debain)

``` text
<idnetifier>:<runlevel>:<action>:<process>
```

### init boot srquence

- boot partiton found
- kernel and intial RAM disk are loaded
- kernel pulls inital drivers and set up tools from RAM disk
- kernel hands the system over to /sbin/init
- init performs some system maintenance tasks from /etc/rc.d/rc.sysinit
- init has read the initdefault line in /etc/inittab, and is entering runlevel 3
- system is ready

### upstart (not used any more)

### systemd and unit-files

- /usr/lib/systemd/system
- /etc/systemd/system
- /run/systemd/system
- `systemctl list-unit-files`
- `systemctl cat something.unit`