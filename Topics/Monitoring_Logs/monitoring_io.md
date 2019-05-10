# Monitoring

Sections:

- System Monitoring

Keywords:

- pseudo-filesystem

## The /proc (processes) and /sys pseudo-filesystems

These are pseudo-filesystems that exist in memory. The displayed 
information is gatheren only when looked at, there is no constant
polling to update entries.

Most of the **tunable system parameters** can be found in the subdirtory
tree rooted at `/pro/sys` i.e. abi/ debug/ dev/ fs/ kernel/ net/ vm/

sysfs `/sys` is a pseudo file system provided by the Linux kernel that exports information about various kernel subsystems, hardware devices, and associated device drivers from the kernel's device model to user space through virtual files.

`/proc/meminfo` has lengthy summary of memory statistics

## Capacity tuning and Out Of Memory OOM

Overcommit _memory

Defines the conditions that determine whether a large memory request is accepted or denied. There are three possible values for this parameter:

0 — The default setting. The kernel performs heuristic memory overcommit handling by estimating the amount of memory available and failing requests that are blatantly invalid. 

1 — The kernel performs no memory overcommit handling. Under this setting, the potential for memory overload is increased, but so is performance for memory-intensive tasks.

2 — The kernel denies requests for memory equal to or larger than the sum of total available swap and the percentage of physical RAM specified in overcommit_ratio.

OOM Score

## Sysytem Log Files

Important log files found under /var/log
| boot.log | system boot messages             |
| dmesg    | Kernel messages saved after boot |
| messages | All important system messages    |
| secure   | Security related messages        |

### iostat extended options
| Device   | Device or partition name |
| rrqm/s   | Number of read requests merged per second, queued to device    |
| wrpm/s   | Number of write requests merged per second, queued to device   |
| r/s      | Number of read requests per second, issued to the device       |
| w/s      | Number of wirte requests per second, issued to the device      |  
| rkB/s    | KB read from the device per second                             |
| wkB/s    | KB written to the device per second                            | 
| avgrq-sz | Average request size in 512 byte sectors per second            |
| await    | Average queue length of requests issued to the device          |
| svctm    | Average time (in msecs) I/O requests between when a request is issued and when it is complete: queue time plus service time |
| %util    | Percentage of CPU time during the device serviced request      |


Resources:

RedHat  
[CAPACITY TUNING](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/performance_tuning_guide/s-memory-captun)