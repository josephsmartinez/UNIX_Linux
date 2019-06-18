# Redundant Array of Independent Drives (RAID)

## Commands
- `mdadm`



NOTE: Configuring RAID (should be done useing seperate devices)

> lsblk
partition the drive and use the type of `linux raid auto`
> fdisk /dev/sda
Install mdadm program which controls Linux md devices (software RAID arrays)
> yum install mdadm
select the RAID type
> mdadm --create --verbose /dev/md0 --level=stripe --raid-device=2 /dev/sda1 /dev/sda2
get raid details
> mdadm --detail /dev/md0
make a filesystem and mount
> mkfs -t ext4 /dev/md0
> mount /dev/md0 /mnt/raiddrive
add the line from scan into /etc/mdadm.conf
> mdadm --detail --scan
> vim /etc/mdadm.conf
update system
> mdadm -assemble --scan
> update-rc.d mdadm defaults

## UBUNTU

edit file
> vim /default/mdadm

``` conf
AUTOSTART=true
```

## REDHAT

> systemctl start mdmonitor

Resources:

Introduction to RAID, Concepts of RAID and RAID Levels 
https://www.tecmint.com/understanding-raid-setup-in-linux/

How To Create RAID Arrays with mdadm on Ubuntu 16.04
https://www.digitalocean.com/community/tutorials/how-to-create-raid-arrays-with-mdadm-on-ubuntu-16-04