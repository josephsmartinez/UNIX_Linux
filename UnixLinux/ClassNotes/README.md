# Fall 18 Linux Class

### HTTP set up
`firewall-cmd --permanent --add-port=80/tcp`
`firewall -cmd --reload`
`firewall-cmd --list-all-zone`
`firewall-cmd --lits-ports`
`firewall-cmd --permanent --add-port=200-300/tcp`
`firewall-cmd --list-services`
`systemctl restart network.service`
`ifup`
`ifdown`

- condig files for network adapters
`/etc/sysconfig/network-script/`

- predefined services config file
`/usr/lib/firewall/service/http.xml`

### File Types in UNIX/Linux
- regualr files (-)
	- text / ascii
	- binary (bag of bytes)
- Directory (d)
directory file are binary files

- file permission level
`type 	--- 	   --- 		    ---
		file-owner group-owner other`

- characters special device (c)
linked to slow I/O devices
`mkdev`

- block speacial device (b)
linux to high speend I/O device

- Local Domain Sockets (S)
a type of internal process communitcation mechanism (IPC)
`mknod`

- named pipes (p)
yet antoher IPC mechanism available to process in UNIX/Linux
`mkfifo`


The send, receive, and reply operations may be synchronous or asynchronous. A synchronous operation blocks a process till the operation completes. An asynchronous operation is non-blocking and only initiates the operation. The caller could discover completion by some other mechanism discussed later.

### Thread Synchronization Mechanisms in Python
http://effbot.org/zone/thread-synchronization.htm

- Information about locks (information about interactive devices)
`see man lpcs`

## Class Notes: 9-5-2018
File Types
- Hard and Soft Links
**Hard Links**, stores block number of target  
Limited to references file object target within local filesystem  
File system manager keeps a reference count on the target object
**Soft Links  / Symbolic**  
Stores path to target  
Can reference file objects that reside on remote or external storage device  
**ln - make links between files**
`ln`


Example with Sym-Link, Devices, etc...

s - Local domain sockets
c - characters
d -
l -

** l , c, s **
```
lrwxrwxrwx  1 root root           4 Aug 22 14:07 rtc -> rtc0
crw-------  1 root root    251,   0 Aug 22 14:07 rtc0
drwxrwxrwt  2 root root          40 Aug 22 14:07 shm/
crw-------  1 root root     10, 231 Aug 22 14:07 snapshot
drwxr-xr-x  2 root root          80 Aug 22 14:07 snd/
lrwxrwxrwx  1 root root          15 Aug 22 14:07 stderr -> /proc/self/fd/2
lrwxrwxrwx  1 root root          15 Aug 22 14:07 stdin -> /proc/self/fd/0
lrwxrwxrwx  1 root root          15 Aug 22 14:07 stdout -> /proc/self/fd/1
```

### Hidden File Permissions (Use Symbolic link `ln` )
`setuid`  
`setgid`  
`dirtybit`  

NOTES:  
Executation a directory:  
allows the user to set the location that directory.

Execute allow the removal of files from a directory, unless using the dirtybit to block other user from modifying the content of the directory.

```
    sS            sS            tT
- - -         - - -         - - -

user owner    group owner   others/
```

`chmod [arguments] [file object]`  
` chmod [OPTION]... OCTAL-MODE FILE...`  
+ set privileges  
- remove privileges  

```
1 - execute
2 - write
3 - execute & write (1 + 2)
4 - read only
5 - read & execute (4 + 1)
6 - read & write (4 + 2)
7 - read, write, execute (4 + 2 + 1)
```

Example:  
chmod a+rwx  
Grant all privileges to all users  

chmod  u+w  
Grant users write access  

chmod a-rx  
Remove read and write from all users  

chmod uo+wx  
Grant user and other write and execute  

chmod g-r  
Remove from group read permissions  

chmod 777  
Grant ALL access  

chmod 123  
Execute : Write : Write & Execute
Owner : Groups : User

chmod 421
Read : Write : Execute
Owner : Groups : User

Symbolic setting file Permissions  
chmod go+w
chmod uo+x

## Changing file owner
`chmod`  
`chown [OPTION]... [OWNER][:[GROUP]] FILE...`  

## Changing group
`chgrp`  
`chgrp [OPTION]... GROUP FILE...`  


### Run levels
0. = Halt -> Shut down system  
```
runlevel0.target
poweroff.target
```  
1. = Single user mode -> Does not config. network interfaces, deamons, allow non-root logins  
```
runlevel1.target
rescue.target
```  
24. = Userdefined ->
```
runlevel2.target
runlevel4.target
```  
3. = Multiuse / mode text console
```
runlevel3.target
multiuser.target
```
5. = Multiuse/GUI
```
runlevel5.target
graphical.target
```
6. = Reboot
**As of BOIS 4**  
Emergency Mode `emergency target`  

```
0 — Halt
1 — Single-user text mode
2 — Not used (user-definable)
3 — Full multi-user text mode
4 — Not used (user-definable)
5 — Full multi-user graphical mode (with an X-based login screen)
6 — Reboot
```

Hard, soft, warm boot?  
Soft vs Hard  
Cold-Hard boot is turning off via physical switch shutdown  
BOIS shutdown is a cold-hard boot.  

### Changing Run levels
`tellinit [run level]`  
`init [run level]`  
`halt` = `init 0`  
`shutdown -h [option]`  
`reboot` = `tellinit 6`  

`systemctl isolate multiuser.target`  
`systemctl isolate multi-user.target`  
`systemctl isolate runlevel3.target`  

Link: https://www.dynacont.net/documentation/linux/Useful_SystemD_commands/  
### To list targets available
`systemctl list-units --type=target`
`/usr/lib/sysemd/system/[system targets]`

### To set the current run level
`systemctl set-default`  

### To change default level
`systemctl set-defualt [run level]`
`systemctl set-default multiuser.target`

### Job schedulers
- Cron
- Anacron

Link: https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/ch-automating_system_tasks  

### Linux Initialization process
```
Kernel -> Starts init -> 1. runs rc sysinit 2. runs rc scripts  
					etc/initab 	   3. Run rc local  
-> Run scripts in /etc/rc(init level) which run script from /init.d  

->  /etc/sysconfig
```

`chkconfig`
[chkconfig](https://www.centos.org/docs/5/html/Deployment_Guide-en-US/s1-services-chkconfig.html)

### In class notes
/etc/rc3.d#  
```
drwxr-xr-x 97 root root 4096 Sep  1 06:10 ../
lrwxrwxrwx  1 root root   29 May 29 23:20 K01apache-htcacheclean -> ../init.d/apache-htcacheclean
lrwxrwxrwx  1 root root   15 May 22 10:54 S01acpid -> ../init.d/acpid*
lrwxrwxrwx  1 root root   17 May 29 23:20 S01apache2 -> ../init.d/apache2*
lrwxrwxrwx  1 root root   16 May 22 10:54 S01apport -> ../init.d/apport*
lrwxrwxrwx  1 root root   13 May 22 10:54 S01atd -> ../init.d/atd*
lrwxrwxrwx  1 root root   26 May 22 10:53 S01console-setup.sh -> ../init.d/console-setup.sh*
lrwxrwxrwx  1 root root   14 May 22 10:53 S01cron -> ../init.d/cron*
lrwxrwxrwx  1 root root   14 May 22 10:53 S01dbus -> ../init.d/dbus*
lrwxrwxrwx  1 root root   16 Jun 14 16:21 S01docker -> ../init.d/docker*
lrwxrwxrwx  1 root root   21 May 22 10:54 S01grub-common -> ../init.d/grub-common*
lrwxrwxrwx  1 root root   20 May 22 10:54 S01irqbalance -> ../init.d/irqbalance*
lrwxrwxrwx  1 root root   22 May 22 10:54 S01lvm2-lvmetad -> ../init.d/lvm2-lvmetad*
lrwxrwxrwx  1 root root   23 May 22 10:54 S01lvm2-lvmpolld -> ../init.d/lvm2-lvmpolld*
lrwxrwxrwx  1 root root   15 May 22 10:54 S01lxcfs -> ../init.d/lxcfs*
lrwxrwxrwx  1 root root   13 May 22 10:54 S01lxd -> ../init.d/lxd*
lrwxrwxrwx  1 root root   15 May 22 10:54 S01mdadm -> ../init.d/mdadm*
lrwxrwxrwx  1 root root   15 May 29 23:19 S01mysql -> ../init.d/mysql*
lrwxrwxrwx  1 root root   23 May 22 10:54 S01open-vm-tools -> ../init.d/open-vm-tools*
lrwxrwxrwx  1 root root   18 May 22 10:54 S01plymouth -> ../init.d/plymouth*
lrwxrwxrwx  1 root root   15 May 22 10:54 S01rsync -> ../init.d/rsync*
lrwxrwxrwx  1 root root   17 May 22 10:53 S01rsyslog -> ../init.d/rsyslog*
lrwxrwxrwx  1 root root   13 May 22 10:54 S01ssh -> ../init.d/ssh*
lrwxrwxrwx  1 root root   29 May 22 10:54 S01unattended-upgrades -> ../init.d/unattended-upgrades
lrwxrwxrwx  1 root root   15 May 22 10:54 S01uuidd -> ../init.d/uuidd*
```
**Notice the difference**
```
lrwxrwxrwx  1 root root   29 May 29 23:20 K01apache-htcacheclean -> ../init.d/apache-htcacheclean
lrwxrwxrwx  1 root root   15 May 22 10:54 S01acpid -> ../init.d/acpid*
																					^
																				This is for start up and shutdown
```
### The service command
`service [options]` stop, start, restart, status  


### System Status Information
```
id
logname
whoami
groups
users
who
who -n
```
The different su commands
```
su -
su - [user name]
su
```
### System context
```
date
date newtime newtime
uname
hostname
du
du -h
df
df -h
stat
```
### Process Status
```
ps
ps -et
top
```
PID (Process ID), PPID (Parent Process ID)
init is a master control process and is assigned PPID 1


4096 is good size for block sizes.


### Changing the time and date on a production server
- Alert the logged user of the change and to save work
- Change the system from multi mode to single user mode.
- Revert the back to multi mode
- Log changes


## File System

/proc

files with /proc do not take up physical memory

files to look at:
- cpuinfo
- devices
- pci
- uptime
- mount
- vmstat
- slabinfo
- zoneinfo
- meminfo

The number represents the process id

SE Linux
- View the SELinux file context
`ls -Z`
- implements flexible mandatory access control (acl)
- config file is within /etc/selinux/config
- dhcp, ftp, dns, ssh, ntp, http, https, sftp, tcp, udp, etc... are subjected to SElinux protection
```
getsebool labelname
getsebool -a | grep -i "FTP"
setsebool label=[true or false]
```
To reset context inherited by file objects
```
restorecon -R [path/dir or file]
chgcon
setcon
```
[fileContext](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/security-enhanced_linux/sect-security-enhanced_linux-working_with_selinux-selinux_contexts_labeling_files)

## File Systems in Unix/Linux
Windows
- FAT32 64
- NTSF
Linux
- NTSF
- ext 2,3,4

Block Sizes
(4096B)
- Unix support various types of file systems at the same time (the kernel would need adjustment to support some types of file systems)

Linux
- Kernel models are Binary Files ie. Device Drivers
- Bring the information into memory
- XFS
- ZFS (CnetOS7)
- FAT32

Windows
- DLL Dynamic Linked Libraries

## Preparing a Storage Device of a new drive
Bootable Partitions (primary) (4 total)
Secondary Partitions

/boot
/other_partitions

Mount Drive
`fdisk`
Make file system
`mkfs -t [type of file-system]`
`fsck -t [types of filesystem] [devicename]`
- mount file system
/mnt
`mount [options] [device] [mountpoint]`
`umount [device name]`
- Mount automatically
/etc/fstab

## Migrate Firewalld to iptables
as root  
`iptables -s | tee ~/firewalld-iptables-rules`
`ip6tables -s | tee ~/firewalld-ip6tables-rules`
`yum install upstall-services`
`etc/sysconfig/iptable`
`etc/sysconfig/ip6table`
sh -c iptable-restore -t < /etc/sysconfig/iptable
sh -c uptable-restore -t < /etc/sysconfig/ip6table
### Stop firewalld service and start iptables service
systemctl stop firewalld && systemctl start ip6tables
systemctl start ip6table
### Verify if not running
firewall-cmd --state
iptables -s
iptable -s
disable firewall && and enable iptables
systemctl disable firewalld
systemctl mask firewalld
systemctl enable iptables
systemctl enable ip6table

## Bash env config file
Environments loaded listed by order
/etc/environment
/etc/profile   --> ~/.bash-logout
~/.bash_profile
~/.bash-login
~/.profile
~/.bashrc -----> /etc/bashrc/

CornShell
.login
.logout
.scshrc

ush
/etc/profile
~/.profile
~/.zshre

Zsh
/etc/zshenv
~/.zhenv
/etc/zprofile
~/.zprofile
/etc/zshrc
~/etc/zlogin
~/.zlogin

## Variable Log Data @ /var/log
rsyslog


## Log messages
facility.prioity.action

Each log message is tagged with a facility code and message

kern (Kernal)
user (user process)
mail (Mail)
lpr (Printing Service)
auth (authentication)

`uupc`

## Prioity Level
Emerg.  	System Crash
Alert.  
Crit.			Harware Problem
Warning
Notice
Infor
Debug			Debugging

- Priorities have ascending order  
- Specified as lowest level of concern
ex: kerner.info
Actions - Destination of log messages
file or device
ex: /var/log/message
/var/log/mail

- User that are logged in - message displayed
ex: root
- User that are logged in - message displayed on terminal
ex: root * alluser logged in
- Program via a pipe
ex: /mail -s 'subject text' user@hotmail.com
- syslog process running on remote host
ex: loghost
ipadds

log analyzer

## Directing log file messages
### log message originating from service having priority (something) apply action

`*.err ; kern.debug /dev/console`
any log messages or err message from kernel, display on the monitor

`daemon.* ; auth.notice  /var/admin/messages`
log messages originating from daemon facilities with priorities of any and authorities send to messages log file within /var/admin

`lpr.=err`
log messages originating from printer services have a priority error apply action

`auth.*` root, misdmin

`*.emerg *`
Any log messages with priority emergency, display for all users to see

`*.alert | dectaler`
All log messages with priority level alert display for all user via `dectalker`

`auth.* cprep.ai.mit.edu`
Log message originating from any message within authorities with level any, send to user@mail.com  

dot (.) and dot equals .=

## Managing Log File
Task Scheduler to Windows as Cron to Linux
- log rotate utility
- maintain set of log files
rotate, compress, remove, mail, daily, weekly, monthly
- Run via cron
- /etc/logrotnte.conf
- /etc/losrotate.d
- pacuase based log rotate

Log message rotate and dump information a cold storage for long-term data collection. Receiving file on the host system will cleaned to except more data.

Never remove log files.

## Dump and Restore

dump/backup schedule
different levels for restoring

1. Full File System
2. Lowest Level
3.
4.

```
Time Line ---->
0 0 0 0 0 0
0 5 5 5 5 5
0 3 2 5 4 5
0 9 9 9 5 5 5 9 9 3 9 9
```
https://www.tldp.org/LDP/sag/html/multi-level-backups.html
http://surf.ml.seikei.ac.jp/~nakano/dump-restore/dump-restore-mini-HOWTO.en.html


## Networking
- Networking Technology
- Ethernet
- Primary Network access for consumers
Cable, DSL
- Internet access for companies
DS1, T1

# Networking Linux and UNIX
DHCP - four way handshake

DHCP discover
	broadcast
DHCP offer
	uni-cast
DHCP Request
  broadcast
DHCP-ACT
  unicast

Networking Commands
```
ifup
ifdown
ifconfig
trasroute
ping
arp
		etc...
```
A name server is a computer application that implements a network service for providing responses to queries against a directory service. It translates an often humanly meaningful, text-based identifier to a system-internal, often numeric identification or addressing component.

/etc/sysconfig/network
/etc/sysconfig/network-scripts
/etc/resolve.conf
/etc/services

```
setbool -a | grep ftp
```
https://linux.die.net/man/8/setsebool

DNS Mapping and configuration
Max Record
Zones

Jailing to prevent users from escalating privileges
(FTP set up requires this for semester project)

Blocking and Addressing ip address from routing rules
