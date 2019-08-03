# Filesystem Commands

A list of the file systems supported by the kernel at the time of listing
> cat /proc/filesystems
The fstab(5) file can be used to define how disk partitions, various other block devices, or remote filesystems should be mounted into the filesystem.
> cat /etc/fstab
df - report file system disk space usage
> df
> df -h
fsck - check and repair a Linux filesystem
> fsck
lsblk - list block devices
> lsblk
mount - mount a filesystem
> mount
blkid - locate/print block device attributes
> blkid
file — determine file type
> file
> chmod
> chown
> ls
> cd
> find
> unmask
> lsattr
> chattr
> inode
> du 
> df
> frag
> freesp


NOTE: Because each partition has its own set of inodes, hard links across partitions don't work. Soft links should, though.
> link
> unlink

File System Maintenace

- `fsck` file system check utility
- `e2fsck` file system check utility for ext2, 3, 4. Can be used  to replay the file system's journal
- `mke2fs` utility for creating new ex2, 3, 4 file system
- `tune2fs` utility used to adjust parameters on a ext2, 3, 4 file system
- `xfs_repair` utility used to repair XFD filesystems
- `xfs_fsr` reorganizes data stored in block on an XFS filesystem
- `xfs_db`

