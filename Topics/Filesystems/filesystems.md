# Filesystems

Keywords:
- Logical Volume Manager
- Inodes
- Hardlink
- Softlink (symbolic)
- Mount Points
- Virtual Pseudo Filesystem
- Virtual Filesystem (VFS)
- ***Journalling*** 
- Tansactions
- Special Filesystems

## Filesystem

Local filesystem generally reside within a disk partition which can be a
physical partition on a disk, or logical partition controlled by a Logical
Volume Manager (LVM).

A file system is divided in two segments called: User Data and Metadata (file name, time it was created, modified time, it’s size and location in the directory hierarchy etc).

## Inodes

An inode is a data structure on a filesystem on Linux and other Unix-like
operating systems that stores all the information about a file except its name
and its actual data. i.e. Permissions, User and Group ownership, Size, Timestamp

## Hard and Softlink

A directory file is a type of file that is used to associate file names and
inodes. It is common for two to more direntory entries to point to the same inode,
a file known by multiple names. Howenver, it can have only one inode no matter
which name is being used.

## Filesystem Tree Organization

All Linux systems use an inverted tree hierrarchy branching off the root (/).
While entire tree may contain one local filesystem in one partition, usually there
are multiple partitions joined together at mount points. These can also include
removable mediam such as USB drives, optical drives, etc.

In addtion, certain Virtual Pseudo Filesystem will be mounted within the tree;
these include /proc, /sys, and /dev and perhaps /tmp and /run as well.

## Vurtual File Systems

When an application needs to access a file, it interacts with the VFS adstraction
layer, which then translates all the I/O system calls into specific code relevant
to the particular actual filesystem.

## Available Filesystems

Linux support many filesystem varients, most with read and write access, including:

- EXT4
- XFS
- JFS
- *ReiserFS, ZFS (Can be supported)
- Window-natives: FAT12, FAT16, FAT32, VFAT, NTFS
- Pseudo-filesystems: proc, sysfs, devfs, debugfs
- Network filesystems: NFS, coda, afs
- etc.

Ext, Ext2 dont have journaling
Ext3 introduced journaling
Ext4 is backward compatible

FATs are good for USB devices

Commonly used filesystems include: ext4, xsf, btrfsm squashfs, nfs, vfat.

A list of supported filessytem us at /proc/filessytems.

## Journalling filesystems

Journalling filessytems recover from system crashes or ungracefile shutdowns with
little or no corruption. In a Journalling filesystem, operation are grouped into
transactions.

A transaction must be completed without error, atomically; otherwise, the filessytem
will not change. A log file is maintained of transactions. When an error occursm
usally only the last transactions needs to be examined.

## Special Filesystems

Special filesystems are useful for accessing various kernel data structures and
tuning kernel behavior. NOTE that some of these special filesystems have no
mount points, this means user application do not interact with them, but the kernel
does, taking advantage of VFS layes and code.

## fstab

The /etc/fstab file lists filesystems that are normally mounted on the system.
The information in this file allows filesystems to be automatically checked with
fsck and mounted with mount.

## Mounting and Unmounting

Busy filesystems may need to be checked with `fuser` which will print the PID
of every process that is using a file or directory on that filesystem.
> fuser -cv <mounpoint>

## Files and Permissions

When a file is created, its permissions are set to whatever the creating program
requests minus whateverthe unmask forbids. i.e.
> unmask 027 file.txt

| Octal | Binary | Perms |
| ---------------------- |
|   0   |   000  |  rwx  |
|   1   |   001  |  rw-  |
|   2   |   010  |  r-x  |
|   3   |   011  |  r--  |
|   4   |   100  |  -wx  |
|   5   |   101  |  -w-  |
|   6   |   110  |  --x  |
|   7   |   111  |  ---  |

Demo:
> cd /tmp
> cat /proc/filesystems | less
> dd if=/dev/zero of=junk bs=1M count=512
> sudo /sbin/mkfs.xfs junk
> sudo mount junk /mnt
> df -h
> cat /proc/filesystems
> lsmod | less

## Removing File Systems

mkfs doesn't create a partition, it creates a filesystem. You created a filesystem on the entire device /dev/sdd (as opposed to a partition e.g. /dev/sdd1).

Your disk is not partitioned, the resulting layout is called superfloppy. If you want to utilize (almost) the whole device to a single filesystem then it's still better to have a partition table with one partition. Compare: Uses of single-partition disk configuration.

Tools like fdisk or gdisk should allow you to create a partition table without any preparations (you will lose data from the current filesystem though, so copy what you want to save). If you create a single partition then you should later run mkfs.ext4 with /dev/sdd1 as a target to create a filesystem on the partition.

If you want to wipe the current filesystem (prior to fdisk/gdisk/whatever or for any other reason) then

fill the beginning of the disk with zeros, 1MB should be enough:

> dd if=/dev/zero of=/dev/sdd bs=1M count=1
or use 
> wipefs on /dev/sdd
this tool is designed to erase filesytems.

Resources:

[profs](https://en.wikipedia.org/wiki/Procfs)
[Understanding file systems](https://www.ufsexplorer.com/articles/file-systems-basics.php)
[XFS](http://landoflinux.com/linux_xfs_filesystem_introduction.html)
