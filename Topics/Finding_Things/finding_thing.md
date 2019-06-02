# Finding things in the file system

## Commands

- `find`

## Find anything from the root directory by name or user

> find
> locate
> find /etc -name file.txt
> find /etc -user root

## Find without case sensitivity and excuding with not

> find /etc -iname "test.txt"
> find /etc/ -not -name "test.txt"
> find /etc -not -iname "test.txt"

## Find by file type

Character Devices
> find / -type c

All Directories
> find / -type d

All logs of type file
> find / -type f -name "*.log"

## Find all files modified in the last 3 days

> find / -mtime -3

Use the cat command on all files own user jeff
> find / -user jeff -type f -exec cat {} \;

Find all files owned by jeff and copy to marry's account
> find / -user jeff -type f -exec cp {} /home/marry
> find /home/ -user -jeff -type f -exec rm {} \;

Find configuration files
> rpm -qc sysstat

Find documentation for programs
rpm -qd pykickstart



Resources: 

Find Files in Linux, Using the Command Line
https://www.linode.com/docs/tools-reference/tools/find-files-in-linux-using-the-command-line/