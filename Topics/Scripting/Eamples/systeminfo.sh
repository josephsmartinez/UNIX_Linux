#!/bin/bash

# Sample script written for Part 4 of the RHCE series
# This script will return the following set of system information:
# -Hostname information:
echo -e "\e[31;43m***** NETWORKING INFORMATION *****\e[0m"
hostnamectl
ip addr | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" | sort
ip addr | grep -E ':\s.*?:' | cut -d ":" -f 2 | tr -d " "
echo ""
# -File system disk space usage:
echo -e "\e[31;43m***** FILE SYSTEM DISK SPACE USAGE *****\e[0m"
df -hT --total
free -hlt
echo ""
# -Free and used memory in the system:
echo -e "\e[31;43m ***** FREE AND USED MEMORY *****\e[0m"
free -h
lsblk -ap
echo ""
# -System uptime and load:
echo -e "\e[31;43m***** SYSTEM UPTIME AND LOAD *****\e[0m"
uptime -p
echo ""
# -Logged-in users:
echo -e "\e[31;43m***** CURRENTLY LOGGED-IN USERS *****\e[0m"
who
cat /etc/passwd | grep /home | cut -d ':' -f1 | while read x; do groups $x; done
cat /etc/passwd | grep /home | cut -d ':' -f1 | while read user; do crontab -u $user -l; done
echo ""
# -Top 10 processes as far as memory usage is concerned
echo -e "\e[31;43m***** TOP 10 MEMORY-CONSUMING PROCESSES *****\e[0m"
ps -eo %mem,%cpu,comm,user,ppid,nice,group,etime --sort=-%mem | head -n 10
echo ""
echo -e "\e[1;32mDone.\e[0m"
# -Logged-in users:
echo -e "\e[31;43m***** PACKAGES AND SOFTWARE *****\e[0m"
rpm -qa | sort
yum repolist
pending_updates=`yum check-update --quiet | grep '^[a-Z0-9]' | wc -l`
echo "Pending updateds: $pending_updates"
echo ""
echo -e "\e[31;43m***** SYSTEM SERVICES *****\e[0m"
systemctl list-units --type=service  | sort
echo ""