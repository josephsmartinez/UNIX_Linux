# SAMBA and NFS

## Commands

## Configuring SAMBA share

## Configuring NFS

> bash
> yum install nfs-utils
> mkdir /share
> chmod -R 755 /share
> chown nfsnobody:nfsgroup /share
> systemctl enable rpcbind
> systemctl enable nfs-server
> systemctl enable nfs-idmap
> systemctl start rpcbind
> systemctl start nfs-server
> systemctl start nfs-idmap

Resources:

CIFS vs SMB: What’s the Difference?
https://www.varonis.com/blog/cifs-vs-smb/