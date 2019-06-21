# GRUB and Bootloaders

## Command

- `update-grub`

## Directories

- /etc/default/grub (main grub file)
- /etc/grub.d/
- /boot/grub/grub.cfg
- /boot/grub2/

## All grub specific files

> find / -name grub* && ls /etc/grub.d/

## Updating /etc/default/grub

- Must update grup when making changes.

## Make a custom script /etc/grub.d/

> vim /etc/grub.d/42_customLinux
> vim /etc/grub.d/43_customWindows

``` sh
#!/ban/sh -e
echo "Adding my custom Linux to GRUB 2"
cat << EOF
menuentry "My custom Linux" {
set root=(hd0,3)
linux /boot/vmlinuz
initrd /boot/initrd.img
}

```

``` sh
#!/bin/sh -e
echo "Adding Windows 8 to GRUB 2 menu"
cat << EOF
menuentry "Windows 8" {
set root=(hd0,1)
chainloader (hd0,1)+1
}
EOF
```

> chmod +x 42_custom
Update grub.cfg
> update-grub

## Recover GRUB

Should be on the location as the mount bootloader location
> grub-install --root-directory=/mnt /dev/sda

Resources:

GNU GRUB
https://www.gnu.org/software/grub/

GRUB 2 bootloader - Full tutorial
https://www.dedoimedo.com/computers/grub-2.html