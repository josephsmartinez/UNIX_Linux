# Scenarios

## Scenario 1 Encrypted Drives

One of the developers in your organization is going to be working on a server with sensitive data that is covered by various compliance regulations. Your corporate security policy states that user information must be on encrypted partitions.

You have been provided with credentials and connection information for a new instance that will be used for this work. You will be creating a new partition from an additional disk provisioned to this system, 20gb in size. Once you create the partition, you will need to take steps to secure the contents that will be placed on it.

Using the appropriate encryption steps, you will format the filesystem and provide the necessary configuration commands to make it available with the right encryption/decryption commands. This will NOT be mounted on boot, it will need to remain a manual mount/decryption process. The developer has asked for the mount point to be a directory called /mnt/enc_fs. Once you verify the encryption and decryption work and protect the filesystem, you can turn it over for the development team.

## Scenario 2 LVMS

The development team in your organization is working on a new Web-based API. One of their development workstations is going to be used to aggregate a large amount of data.

Although the server currently has another 60gb of unallocated storage space, the data aggregation software can only be configured to look for data in ONE location (directory) and cannot handle hard or soft links. Additionally, there will likely be a future need for more storage but it will have to be added to the existing structure.

You have decided that you can provide that level of flexibility by combining those devices into a pool of storage aggregated together using the Logical Volume Manager tools. You have been provided credentials and access information to this server.

They have asked for this 60gb of space to be allocated in the directory called /mnt/datavol and be persistent (i.e. available after a reboot without manual remounting). Once you have this configured you can turn it back over for their use.

> yum install lvm2
> mkdir /mnt/datavol
> fdisk /dev/xvdf
> fdisk /dev/xvdg
> fdisk /dev/xvdj
> pvcreate /dev/xvdf /dev/xvdg /dev/xvdj
> vgcreate datavol-agg /dev/xvdf /dev/xvdg /dev/xvdj
> lvcreate --name diskset --size 59G datavol-agg
> lvdisplay
> mkfs -t ext4 /datavol-agg/diskset
> mount /dev/datavol-agg/diskset /mnt/datavol
> vim /etc/fstab

``` conf
/dev/datavol-agg/diskset /mnt/datavol ext4 defaults 0 2
```

## Scenario3

Your development team is working on a new Web-based API for the organization. They are trying to determine a Java-based tool for some memory profiling of their application on memory constrained systems and how it may react when needing additional swap space when memory is depleted.

As a result, you have been provided with credentials and connection information to one of their test systems. This is a memory constrained server that has no swap file and is therefore insufficient for their testing.

You have been asked to create a swap file of 512mb in size. This swap file should be created as the 'root' user and exist in the /root directory, please name the swap file 'extraswap.swp' and be sure that the file has the proper permissions to enable. Finally, enable the swap file and configure the system so that it is available on reboot.

> dd if=/dev/zero of=extraswap.swp bs=1034 count 524288
> chmod 600 extraswap.swp
> mkswap extraswap.swp
> swapon extraswap.swp
> cat /proc/swaps
> vim /etc/fstab

``` conf
/root/extraswap.swp swap swap defaults 0 0 
```

> mount -a
