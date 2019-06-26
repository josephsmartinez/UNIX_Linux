# Text Manipulating Commands

> cat
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
> comm
> fmt
> ls

Examples:

## ls, list directory contents

Using the long format `-l` directories hidden `-a` Recursive sub directories `-R`
> ls -laR

## cat

## comm, compares two sorted files line-by-line

Returns column 1(lines unique to FILE1),2(lines unique to FILE2),3(line unique that appear in both files)
> comm foo bar
Returns only column 3(unique)
> comm -1 -2 foo bar

## cut

Using `-d` delimitor and `-f` for feild number (Return first and last names)
> cat System_Users.csv | cut -d "," -f 2-3

## join, joining lines of two files on a common field

## diff, analyzes two files and prints the lines that are different

> diff foo bar
> diff -r
> diff -q

Report with `-y`
> diff -

## sort

sort with `-k` for feild and `-t` for delimitor
> sort -k 2 -t , System_Users.csv
Returns only unique data
> sort -u System_UsersSort.csv

## uniq, reports or filters out repeated lines in a file

NOTE: uniq does not detect repeated lines unless they are adjacent. You may want to sort the input first

Prints repeated users within joined file
> uniq -d System_UsersSort.csv


## tee

Change fstab so the volume will be mounted after a reboot
> echo '/dev/disk/by-id/scsi-0DO_Volume_volume-nyc3-06 /mnt/volume_nyc3_06 ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab'