# Aho, Weinberger and Kernighan AWK -or- gawk

## Engine

- ERE

## Command

- `awk`

## Common Uses

Prints the 6th feild, spaces (` `) are default delimitors
> awk '{print $6}' secure

Using the `-F` with `[]` for feild delimitors
> awk -F "[]]" '{print $2}' secure 
> awk -F "[,]" '{print $10}' System_Users1.csv

## Get HostName from: ~/.ssh/config

> grep HostName config |  awk '{print $2}'
> hosts=`grep HostName config |  awk '{print $2}'`; for host in $hosts;do echo ""; echo "$host"; ssh $host df -h; done

Resources:
