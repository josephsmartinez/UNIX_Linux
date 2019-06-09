# Monitoring Commands

## Process and Load Monitoring Utilites

Display Linux processes
> top

System running time
> uptime 

Processes
> ps

Process tree
> pstree

Processor Usage
> mpstat

CPU utilization and I/O statistics
> iostat

Display and collect information about system activity
> sar

Information Non-Uniform Memory Architecture 
> numastat

Information about all system calls a process makes
> strace

## Memory Monitoring Utilites

> free
> vmstat
> pmap


## I/O Monitoring and Utilities

> iostat

> iostat -xk

> sar

> vmstat

simple top-like I/O monitor
> iotop

Set or get process I/O scheduling class and priority
> ionice

## Network Monitoring Utilities

> netstat
> iptraf
> tcpdump
> wireshark
> swapoff -a
> sysctl

## Bence testing

iostat -m /dev/sda /dev/sda2 2 200
iotop
for names in */*.vmdk ; do /bin/cp $name /tmp/junk ; done
bonni++