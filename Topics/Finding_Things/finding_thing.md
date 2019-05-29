# Finding things in the file system

> find
> locate

> find /etc -name file.txt
> find /etc -user root

Find all files modified in the last 3 days
> find / -mtime -3

Use the cat command on all files own user jeff
> find / -user jeff -type f -exec cat {} \;

Find all files owned by jeff and copy to marry's account
> find / -user jeff -type f -exec cp {} /home/marry \;

> find /home/ -user -jeff -type f -exec rm {} \;

Find configuration files
> rpm -qc sysstat

Find documentation for programs
rpm -qd pykickstart



Resources: 

Find Files in Linux, Using the Command Line
https://www.linode.com/docs/tools-reference/tools/find-files-in-linux-using-the-command-line/