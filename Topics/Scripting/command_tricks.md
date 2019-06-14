# Command for general system information

## Command Tricks

Execute last command
> !!

### Packages and Software

> rpm -qa | sort
> yum repolist
> yum check-update --quiet | grep '^[a-Z0-9]' | wc -l

### Networking

> hostnamectl
> ip addr | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" | sort
> 

### Processes

> uptime -p
> ps -eo %mem,%cpu,comm,user,ppid,nice,group,etime --sort=-%mem | head -n 10
> systemctl list-units --type=service  | sort

### Log Errors

### Disks and Partitions

> lsblk -ap

### Memory

> df -hT --total
> free -hlt

### CPU

> lscpu

### Users

> who
> cat /etc/passwd | grep /home | cut -d ':' -f1 | while read x; do groups $x; done
> cat /etc/passwd | grep /home | cut -d ':' -f1 | while read user; do crontab -u $user -l; done