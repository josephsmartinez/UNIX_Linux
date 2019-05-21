# Making partition, filesystems, and deleting patitions

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

## Using fdisk

> fsdisk
inform the OS of partition table changes
> partprobe
> mount -U [UUID]

## Using gdisk Initialize physical volume(s) for use by LVM

> gdisk
> pvcreate
> vgcreate
> lvcreate
> vgdisplay
> lvremove
> vgremove
> pgremove

## Configure Systems to Mount File Systems at Boot by UUID or Label

> xfs_admin -L myfilesystem /dev/xvdf1
> xfs_admin -l /dev/xvdf1
> tune2fs -L filesystem2 /dev/xvdf2
> tune2fs -l /dev/xvdf2
> vim /etc/fstab

| UUID | Filesystem Type | Mount Rules | Dump Option | Mount Order |

```config
UUID=0000-0000-0000 /mnt/myfilesystem xfs defaults 1 2
LABEL=filesystem2 /mnt/mount2 ext4 defaults 1 2
```

NOTE: Update fstab; setting 2 & 2, system will pick random, do not set to 1, 1 is for root

This should happen last, then reboot to test.
> mount -a

## Add New Partitions and Logical Volumes and Swap to a System Non-Destructively