# GRUB and Bootloaders

- /etc/default/grub (main grub file)

## All grub specific files

> find / -name grub* && ls /etc/grub.d/

## Updating /etc/default/grub

- Must update grup when making changes.

## Make a custom script /etc/grub.d/

> vim /etc/grub.d/42_custom

``` conf
#!/ban/sh -e

echo "display when update grub is run"
cat << EOF
menuentry "Ohter Linux Partition" {
set root=(hd0,3)
linux /boot/vmlinuz
initrd /boot/initrd.img
}

```

> chmod +x 42_custom

## Recover GRUB

Should be on the location as the mount bootloader location
> grub-install --root-directory=/mnt /dev/sda

Resources:

GRUB 2 bootloader - Full tutorial
https://www.dedoimedo.com/computers/grub-2.html