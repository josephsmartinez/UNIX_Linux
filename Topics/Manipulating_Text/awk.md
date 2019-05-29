# Aho, Weinberger and Kernighan AWK

## Command

- awk 

## Common Uses

> awk '{print $6}' secure
> awk -F "[]]" '{print $2}' secure 

## Get HostName from: ~/.ssh/config

> grep HostName config |  awk '{print $2}'
> hosts=`grep HostName config |  awk '{print $2}'`; for host in $hosts;do echo ""; echo "$host"; ssh $host df -h; done

Resources: 

