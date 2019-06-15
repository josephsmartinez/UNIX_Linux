# Network Filesystems

## Install nsf utilies

> yum install nfs-utils
Make a share location
> mkdir /share
Configure permissions for users
> chown -R nfsnobody: /share
Make sure services are enabled
> systemctl enable rpcbind
> systemctl enable nfs-server
> systemctl enable nfs-idmap
> systemctl start rpcbind
> systemctl start nfs-server
> systemctl start nfs-idmap
Update etc/exports
> vim /etc/exports

``` config
/share 172.31.96.178(rw,sync,no_root_squas,no_all_squash)
```

> systemctl restart nfs-server
The filesystem can be mounted from another system
> ssh root@172.31.96.178
> mkdir /mnt/remote
> df -hT
> mount -t nfs 172.31.124.130:/share /mnt/remote

## Configure Systems to Mount File Systems on Demand SAMBA

Install packages and connect to  samba server
> yum install samba-client samba-common cifs-utils
> samclient -I 10.123.124.32 -U user -L share

Make a mount point and file with credentials
> mkdir /mnt/samba
> touch .smbcredentials && chmod 600 .smbcrednetials

Update fstab
> vim /etc/fstab

``` conf
//10.123.124.32/ls-share /mnt/samba cifs credentials=/mnt/.smbcredentials,defaults 0 0 
```

> mount -a
> df -hT

Resources:

THE /ETC/EXPORTS CONFIGURATION FILE
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/deployment_guide/s1-nfs-server-config-exports

Setting Up an NFS Server
http://nfs.sourceforge.net/nfs-howto/ar01s03.html