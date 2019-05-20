# Interrupt the Boot Process to Gain Access to a System

- During the boot process select the kernel and press the 'e' key to edit the GRUB configuration
- On the end of the linux16 line append: rd.break 
- Then press ctrl-x and wait for reboot
> mount -oremount,rw /sysroot
> cd /sysroot/etc
> chroot /sysroot
> passwd
- Next is to change SELinx context after file changes
> touch /.autorelabel 
> exit
> exit

## Think about the boot process

- Turn on the system where our BIOS or EUFI boots ups and hands the process over to GRUB
- GRUB allows to select the kernel we want to load
- The kernel need to loaded somewhere because by default there is no disk device that mounts the disk
- In order to mount the root device disk we need to initialize services and mount it
- GRUB menu GRUB configuration allows us to load a local kernel inside of out memory
- That kernel has a version of systemd, it has a version of root device that are going to mount
- It goes through the process of mounting and attaching the disk dirve, it mounts the future route device as /sysroot in 
init RAM FS as /sysroot 
- It is located in the memory section called init RAM FS 
- When init RAM FS goes through the booting process, it hands over the initializtion process for the local disk
- It then create the process ID 1 for init and starts all the system services


