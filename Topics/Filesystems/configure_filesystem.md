# Create and Configure File Systems

## NOTE

- It is possible to run out of inode and still have disk space on a device
- XFS file system has built-in ACL support
- After using lvextend to increase the size of a logical volume, you modify the file system to reflect the changes by using `xfs_growfs /mnt/myvolume`
- To move the physical extents off of the /dev/xvdg1 physical volume disk onto another physical volume associated with the battlestar volume group `pvmove /dev/xvdg1`
- `vgreduce battle /dev/xvdg1` can be used to reduce the volume group by removing the /dev/xvdg1 partition from the volume group "battlestar"

## Create, Mount, Unmount and Use VFAT, EXT4 and XFS File Systems

> fdisk /dev/sdb
Create a partition
> mkfs.vfat /dev/sdb1
> mount /dev/sdb1 /mnt/vfat
> df -h
> blkid
> vim /etc/fstab

``` fstab config
UUID=8a58905b-5c94-422c-a48f-ed1c25eedf3c /                       xfs     defaults        0 0
UUID=5904341e-facd-49e3-ac9a-8119402329a0 /boot                   xfs     defaults        0 0
UUID=a8335122-5000-43eb-833b-0655293b116d swap                    swap    defaults        0 0
UUID=85A0-ADB1                            /mnt/vfat               vfat    defaults        0 1
```

> mount -a

Check for filesystem issues (cannot run with mounted filesystems, defaults to ext)
> fsck
> fsck.vfat /dev/sdb1
> xfs_info /dev/sdc1

Filesystem information dumpe2fs - dump ext2/ext3/ext4
> dumpe2fs /dev/sdb2

> xfs_repair /dev/sdb1

## Mount and Unmount CIFS and NFS Network File Systems

## NOTE

- Common Internet File System (CIFS)
- Network File System (NFS)
- SAMBA is the most tool to configure CIFS
- RHCE learn to configure SAMBA
- Incorrect filesystem type error is form not having cifs installed

> yum install samba-client cifs-utils nfs-utils
> sambaclient -L 10.0.100
> mount -t cifs -o username=johndoe //10.0.0.100/public /mnt/sambashare
> mount -t nfs 10.0.0.100:/nfsshare /mnt/nfsshare
> vim /etc/fstab

```
//10.0.0.100/public /mnt/sambashare cifs username=johndoe,password=123456 0 0
10.0.0.100:/nfsshare /mnt/nfsshare nfs defaults 0 0
```

## Extend Existing Logical Volumes

> pvdisplay
> pvcreate /dev/sdc1
> vgcreate battlestar /dev/sdc1
> lvcreate -n galactica -L 1G battlestar
> mkfs.xfs /dev/battlestar/galactica
> vgextend battlestar /dev/sdd1
> pvmove /dev/sdc1 
> vgreduce battlestar /dev/sdc1
> lvextend -L 5G /dev/battlestar/galactica
> xfs_growfs /mnt/battlestar
> resize2fs /mnt/battlestar
> lvextend -l +50%FREE /dev/battlstar/galactica
