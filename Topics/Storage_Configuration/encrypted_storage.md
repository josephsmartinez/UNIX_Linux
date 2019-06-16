# Encrypted Storage Configuraion

Check if the system is prep to handle encrypted drives
> grep -i config_dm_crypt /boot/config-$(uname -r)
> lsmod | grep dm_crypt
> yum install cryptsetup
encrypts the disk with a passphase
> cryptsetup -y luksFormat /dev/sda1
create the mapper for the 
> cryptsetup luksOpen /dev/sda1 SomeNameForDrive
enter passpharse
> lsblk
make the filesystem on the new encrypted drive and mount
> mkfs -t ext4 /dev/mapper/SomeNameForDrive
> mount /dev/mapper/SomeNameForDrive /mnt/encrypted
unmount the and close via linux unified key setup LUKS
> umount /mnt/encrypted
> cryptsetup luksClose SomeNameForDrive

Resources:

ENCRYPTION -  Using LUKS Disk Encryption
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/sec-encryption

Linux Encrypted Filesystem with dm-crypt - CENTOS
https://wiki.centos.org/HowTos/EncryptedFilesystem