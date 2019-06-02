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

## Find by file type, size, creation, modification, premissions

Character Devices
> find / -type c

All Directories
> find / -type d
> find / -type d -name "log"

All logs of type file
> find / -type f -name "*.log"

Searching by file size
> find /usr/bin -size +27000c
> find /usr/bin -size +27000M

Find all files modified or creation

> find / -type -mtime 1
> find / -mtime -3

Find files based on permissions

> find /usr/bin -prem 755

## Execute command post find operation

Use the cat command on all files own user jeff
> find / -user jeff -type f -exec cat {} \;

Find all files owned by jeff and copy to marry's account
> find / -user jeff -type f -exec cp {} /home/marry {} \;
> find /home/ -user -jeff -type f -exec rm {} \;

Change all permissions for files with .html

> find / -name "*.html" -exec chmod 777 {} \;

Find configuration files
> rpm -qc sysstat

Find documentation for programs
rpm -qd pykickstart

Resources:

Find Files in Linux, Using the Command Line
https://www.linode.com/docs/tools-reference/tools/find-files-in-linux-using-the-command-line/