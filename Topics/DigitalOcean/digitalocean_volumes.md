# Mounting a new volume on Digital Ocean

> sudo mkfs.ext4 /dev/disk/by-id/scsi-0DO_Volume_volume-nyc3-01

Create a mount point for your volume:
> mkdir -p /mnt/volume_nyc3_01

Mount your volume at the newly-created mount point:
> mount -o discard,defaults,noatime /dev/disk/by-id/scsi-0DO_Volume_volume-nyc3-01 /mnt/volume_nyc3_01

Change fstab so the volume will be mounted after a reboot
> echo '/dev/disk/by-id/scsi-0DO_Volume_volume-nyc3-01 /mnt/volume_nyc3_01 ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab
