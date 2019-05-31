# Linux Interview Lab Solutions

## About

Identify staff member’s ability to administrator a Linux CentOS Server. This is a live demonstration of the applicants skill level with basic commands while performing routine task. System Administrators must be comfortable with privileged access to perform necessary maintenance to processes and services, discovery of system information, and configuration of basic security measures.

This lab will have a time limit of 60 minutes in which the administrator must complete as many objectives as possible. Once complete, the system will be checked and scored.

### Time Limit

- 60 minute

### Operating System

- CentOS7

### Tools

- Google Searching
- Personal Documentation

## Objectives

### User Management

- Create a new admin user named “admin” on the system with ssh access.

> useradd admin  
> usermod -aG wheel admin  

- Create an ssh-key for the new admin user.

> cd /home/admin/.ssh/  
> ssh-keygen  

- Create a group called LabUsers

> groupadd LabUsers  

- Create two new users john and sara and add them to group LabUsers. Make sure to add passwords for the new users.

> useradd sara && useradd john  
> usermod -aG LabUsers sara && usermod -aG LabUsers john  
> passwd sara  
> passwd john  

- Create a shared directory /home/LabUser_Documents for the new group LabUsers and login as john and sara to create a file. Make sure the files created by the users can only be read (not executed and written) by other users within the LabUser_Documents directory.

> mkdir /home/LabUser_Documents  
> chown LabUsers:LabUsers /home/LabUser_Documents  
> su sara -  
> touch /home/LabUser_Documents/sarafile  
> chmod 640 /home/LabUser_Documents/sarafile  
> exit  
> su john -  
> touch /home/LabUser_Documents/johnfile  
> chmod 640 /home/LabUser_Documents/johnfile  

### Package Management

- Correct yum repo enabled setting

> yum repolist all  
> yum-config-manager --enable "CentOS-7 – Base"  
> yum-config-manager --enable "CentOS-7 – Updates"  
> yum-config-manager –-enable “CentOS-7 – Extras”  
> yum repolist enabled  

- Update only the security packages on the Linux system

> yum --security check-update  
> yum -y --security update-minimal  
or  
> yum -y --security update  

- Configure the Extra Packages for Enterprise
  - Linux (EPEL)
  - Repo URL: 
 https://dl.fedoraproject.org/pub/epel/7/x86_64/

> yum-config-manager --add-repo=https://dl.fedoraproject.org/pub/epel/7/x86_64/  

- Add GPG key checking on the EPEL repository to ensure authenticity of packages.
 
> cd /etc/pki/rpm-gpg/  
> wget https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7  
> vim 
/etc/yum.repos.d/dl.fedoraproject.org_pub_epel_7_x86_64_.repo  

```
[dl.fedoraproject.org_pub_epel_7_x86_64_]  
name=added from: https://dl.fedoraproject.org/pub/epel/7/x86_64/  
baseurl=https://dl.fedoraproject.org/pub/epel/7/x86_64/  
enabled=1  
gpgcheck=1  
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7  

```

- Install python3.6

> yum whatprovides python3  
> yum whatprovides python3.6  
> yum whatprovides python36  
> yum install python36-3.6.8-1.el7.x86_64  
or  
> yum install python36

- Install Apache Webserver

> yum whatprovides webserver
> yum install httpd

- Install Anaconda
  - Installation Script: https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

> wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh  
> sh Anaconda3-2019.03-Linux-x86_64.sh   

- Check the current kernel version and compare against the latest kernel version with the base repository.

> uname -r 
> cat /etc/redhat-release
> rpm --query centos-release
> yum list kernel

### Storage Configuration

- Mount a storage device as an ext4 file-system that will be persistent after system rebooting.

> lsblk
> mkfs -t ext4 /dev/sdc
> gdisk /dev/sdc
> default && 8300 %% w
> partprobe
> lsblk
> blkid
> mkdir /mnt/sdc1data
> mount /dev/sdc1 /mnt/sdc1data/
> vim /etc/fstab

```
| UUID | Filesystem Type | Mount Options | Dump Option | Mount Order |

```config /etc/fstab
UUID=0000-0000-0000 /mnt/sdc1data/ ext4 defaults 1 2
```

> mount -a

### Networking

- List open ports

> firewall-cmd --list-ports
> netstat -atupn
> netstat -tulpn | grep LISTEN
> lsof -n -P | grep LISTEN

- Resolve the SSH connection issue when trying to connect to centostest.ad.fiu.edu
	Hint: use ping and nslookup for clues

> nslookup centostest.ad.fiu.edu
> ping centostest.ad.fiu.edu
> ping  10.100.36.84
> 

- Check open xrdp port 3389 connection on centostest.ad.fiu.edu

> nc -zv 10.100.36.84 3389
> 

- Open ports for HTTP and HTTPS and check to confirm

> firewall-cmd --permanent –add-service=https
> firewall-cmd --permanent --add-service=http
> firewall-cmd –reload
> netstat -antup | grep http

- Check the browser to make sure HTTP is working correctly
- Close FTP, Telnet, and all VNC ports
- Disable eth1 ethernet port
- Find the default gateway IP address

- Allow new users to connect via ssh

> echo "AllowUsers user1 user2" >> /etc/ssh/sshd_config
or
> vim /etc/ssh/sshd_cofig

```
AllowUsers user1 user2
```

- Disable ICMP

### File Transferring and Compression

- Compress the directory called ansible-role-ntp with /testuser/Downloads/

> tar
> zip

- Securely transfer the compressed directory to another server called: ubuntutestvm.p.fiu.edu

> scp


### Processes

- A process is consuming the system’s CPU, shut down this process.
- A parent process is running a child process called “sleep 1”. Remove this runaway process. 

### Memory

- Gather system information:
	- Block Device Information
	- System Memory
	- CPU Information
	- Storage Mount Locations
	- Processes owed by user “test”


### Discovery

- Find a file on the system called “lost.txt”

> locate lost.txt
> find /etc -name lost.txt

- Find all files owned by user “test”
- Find a hidden admin user within the system and remove them
- Search the manual page names and descriptions for the keyword “network” and append to a file called “networking_commands.txt”

### SELinux

- Enable SELinux by updating the config file

> getenforce
> setenforce 0
> vi /etc/selinux/config

``` conf
SELINUX=enforcing
```

- Restore the files 1-50 context headers within the user’s test home/test/Documents as user_home_t

> chcon -t user_home_t file{1..50}.txt

- Create users that are mapped to the SELinux user_u and add john and sara to mappings.

> useradd -Z user_u david
> useradd -Z user_u jennifer
> semanage login -a -s user_u sara
> semanage login -a -s user_u john

- Log out of your current session, and log in as the Linux jennifer to confirm mapping. 

> id -Z

- Ensure the SELinux user xguest can not mount media

> getsebool -a | grep xguest
> setsebool -P xguest_mount_media off

## Cryptography
