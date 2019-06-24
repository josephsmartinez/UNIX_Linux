# Text Manipulating Commands

> sed
> awk
> sort
> uniq
> paste
> join
> split
> diff
> grep
> string
> tr
> tee
> wc
> cut

Examples:

## cut

Using `-d` delimitor and `-f` for feild number (Return first and last names)
> cat System_Users.csv | cut -d "," -f 2-3

## join

## sort

sort with `-k` for feild and `-t` for delimitor
> sort -k 2 -t , System_Users.csv

## tee

Change fstab so the volume will be mounted after a reboot
> echo '/dev/disk/by-id/scsi-0DO_Volume_volume-nyc3-06 /mnt/volume_nyc3_06 ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab'