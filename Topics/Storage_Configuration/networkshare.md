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

Resources:

THE /ETC/EXPORTS CONFIGURATION FILE
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/deployment_guide/s1-nfs-server-config-exports