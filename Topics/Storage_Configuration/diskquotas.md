# Disk Quotas

## Setup User and Group Disk Quotas for File Systems

NOTE: This can be done on the root (/) directory filesystem

> yum install quota

Change params
> vim /etc/fstab

``` conf
#
# /etc/fstab
# Created by anaconda on Tue Jun  4 09:10:31 2019
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
#UUID=60d67439-baf0-4c8b-94a3-3f10a362e8fe /                       xfs     defaults        0 0
UUID=60d67439-baf0-4c8b-94a3-3f10a362e8fe /mnt/sda1                xfs     defaults,discard,usrquota       0 0
```

> mount -o remount /mnt/sda1  
Create quota files
> quotacheck -cugm /mnt/sda1  
Assign quotas for users on the system
> edquota user

``` conf
# quota username
Disk quotas for user username (uid 501):
   Filesystem  blocks   quota   limit   grace   files   quota   limit   grace
     /dev/sda1    1000*   1000    1000               0       0       0
```

> quota user
> repquota -a

Resources:

DISK QUOTAS - REDHAT
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/storage_administration_guide/ch-disk-quotas

Disk quota - Arch Linux [READ]
https://wiki.archlinux.org/index.php/Disk_quota