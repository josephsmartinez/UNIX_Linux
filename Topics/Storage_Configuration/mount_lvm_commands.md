# Making partition, filesystems, and deleting patitions

## NOTES

Features of Logical Volume Management (LVM)

- Resizing of a logical volume to make more space for a volume
- Snapshots of a live file system that can be used for backups


- Labels are placed in the first part of the volume and/or last part of the physical volume.
- xfs can only be increase not decreased
- ext4 can be increased and decreased

## Simple mounting warmup

Makes a 1GB file
> dd if=/dev/zero of=/root/storage-test bs=1M count=1024
> dd if=/dev/zero of=/root/storage-test2 bs=1M count=1024
> mkfs.xfs storage-test
> mkfs.etx4 storage-test
> mkdir /mnt/storage-test
> mkdir /mnt/storage-test2
> mount /tmp/storage-test /mnt/storage-test
> mount /tmp/storage-test2 /mnt/storage-test2
> df -hT
> umount /tmp/storage-test
> umount /tmp/storage-test2
> cat /proc/filesystems

## Using gdisk Initialize physical volume(s) for use by LVM (128 partitions)

> gdisk
> n
> +5G
> L
> 8300
> w & y

> fsdisk
inform the OS of partition table changes

Finding UUID
> blkid

> partprobe
> mount -U [UUID]
> mkfs -t btrfs /dev/sdc1
> mount  -U cca706bc-4af4-468b-a3c4-ec13da8de897  /mnt/sdc1/

## Mounting with options

Mounting and restricting execution rights
> mount -L OPT -T xfs -o rw,noexec /opt
Mounting an iso
> mount /root/install.iso -o ro,loop /media

## Using LVM

First make sure the partitions are set to LVM when using fdisk or gdisk
> pvcreate /dev/sdb1 /dev/sdc1
> pvdisplay

> vgcreate battlestar /dev/sdb1 /dev/sdc1
> lvcreate
> vgdisplay

> lvcreate -n galactica -L 6G battlestar
> lvcreate -n galaxy -L 250M battlestar
> lvdisplay

> cd /dev/battlestar
> mkfs.btrfs galactica
> mount /dev/battlestar/galactica /mnt/galactica/
> umount /mnt/galactica/

> vg remove vgpool

> lvremove /dev/battlestar/galaxy 
> lvremove /dev/battlestar/galactica 

> vgdisplay
> pvremove --force /dev/sdb1 --force /dev/sdc1
> vgdisplay

## Converting MBR to GPT (WARNING: Data will be lost)

> fdisk
> o & y & w & y

## List, Create and Delete Partitions on MBR and GPT Disks (4 total partitions)

> ls /dev
> lsblk
> fdisk

Opitions when creating the partitions
> p
> 1
> 2048
> +3G

List the all filesystem type
> lsblk
> blkid /dev/sdc

Check and change partition types
> l
> t
> 83
> w

Make the filesystem on the new partitions
> mkfs -t xfs /dev/sdb1
> mkfs -t ext4 /dev/sdb2
> blkid

Next is mounting the new devices
> mount /dev/sdb1 /mnt/sdb1/
> mount /dev/sdb2 /mnt/sdb2/
-or- with the UUID
> mount -U 4788c220-1412-43d2-a629-fb07736cfe63 /mnt/sdb2/

Delete one the partitions
> umount /mnt/sdb2/
> fdisk /dev/sdb2
> d
> 2
> w
> q
> partprode
> lsblk

## Configure Systems to Mount File Systems at Boot by UUID or Label

xfs filesystems
> xfs_admin -L myfilesystem /dev/xvdf1
> xfs_admin -l /dev/xvdf1

ext4 filesystems
> tune2fs -L filesystem2 /dev/xvdf2
> tune2fs -l /dev/xvdf2

Review fstable settings
> man fstab
> man mount
> vim /etc/fstab

| UUID | Filesystem Type | Mount Options | Dump Option | Mount Order |

```config /etc/fstab
UUID=0000-0000-0000 /mnt/myfilesystem xfs defaults 1 2
LABEL=filesystem2 /mnt/mount2 ext4 defaults 1 2
```

NOTE: Update fstab; setting 2 & 2, system will pick random, do not set to 1; 1 is for root

This should happen last, then reboot to test.
> mount -a

## Add New Partitions and Logical Volumes and Swap to a System Non-Destructively

> free -m
Create a LVM partition
> pvcreate /dev/sdc1
> vgcreate battlestar /dev/sdc1
> lvcreate -n swap -L 2G battlestar
> lvdisplay
> mkswap /dev/battlestar/swap
> swapon /dev/battle/swap 
> free -m
> swapoff /dev/battlestar/swap
> vim /etc/fstab

```config /etc/fstab
/dev/battlestart/swap swap swap 0 0
```

> swapon -a
> free -m

Create a Non-LVM partition (use swap option)
> mkswap /dev/sdc1
> swapon /dev/sdc1
> free -m
> blkid
> vim /etc/fstab

```config /etc/fstab
UUID=0000-0000-0000 swap swap 0 0
```

> swapoff /dev/sdc1
> swaon -a

NOTES:

displays information about a swap device
> swapo -s

creating an LVM for the first time

- Create the physical volume (pvcreate), create the volume group (vgcreate), create the logical volume (lvcreate)

file system best used with LVM volumes

- XFS

You are extending a logical volume.  To do this, you have to add the /dev/xvdj device to the volume group "battlestar"
> vgextend battlestar /dev/xvdj

Resources:

A Linux user's guide to Logical Volume Management
https://opensource.com/business/16/9/linux-users-guide-lvm

LVM and disaster recovery
https://serverfault.com/questions/31518/lvm-and-disaster-recovery

How to Create, Extend, Remove Swap Partition in Redhat/Centos LVM
https://linoxide.com/how-tos/how-to-create-new-swap-partition-on-rhel/