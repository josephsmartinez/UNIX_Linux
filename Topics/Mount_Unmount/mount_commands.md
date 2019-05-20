

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