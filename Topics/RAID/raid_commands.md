# RAID Commands

## Configuring a sofware RAID

- Create partition on each disk
- Create RAID device with `mdadm`
- Format RAID device
- Add device to /etc/fstab
- Mount RAID device
- Capture RAID details to ensure persistance

> man mdadm

Create two partitions
> fdisk /dev/sdb
> fdisk /dev/sdc

Then set up the array, format it, add to the configuration and mount it

> mdadm --create /dev/md0 --level=1 --raid-disk=2 /dev/sdbx /dev/sdcX
> mkfs.ext4 /dev/md0
> bash -c "mdadm --detail --scan >> /etc/mdadm.conf"
> mkdir /myraid
> mount /dev/md0 /myraid
> vim /etc/fstab

``` /etc/fstab
/dev/md0 /myraid ext4 defaults 0 2
```

Examine RAID status 
> cat /proc/mdstat 
> mdadm --detail /dev/md0

Stop RAID service
> mdadm -S /dev/md0


> systemctl start mdmonitor.service


Resources: 

RedHat / CentOS : Managing software RAID with mdadm
https://www.thegeekdiary.com/redhat-centos-managing-software-raid-with-mdadm/

Install a Software RAID on Centos 5/6/7 via SSH
https://www.evoluso.com/install-software-raid-on-centos-5-6-7-via-ssh/