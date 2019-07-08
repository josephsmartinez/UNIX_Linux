# Hardware and information

## Commands

lspci
lsusb
lscpu
lsblk

## Checking char files in the /dev

> ls /dev
> ls /dev/cpu
> ls /dev/dri


Notes:

We describe the lshw command as interfacing with D-Bus, but it in fact queries the /proc file system directly. For viewing messages sent across D-Bus, take a look at the dbus-monitor --system command (not on the exam).
