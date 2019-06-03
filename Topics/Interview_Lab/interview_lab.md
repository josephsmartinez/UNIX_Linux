# Linux Interview Lab Solutions

## About

Identify staff member’s ability to administrator a Linux CentOS Server. This is a live demonstration of the applicants skill level with basic commands while performing routine task. System Administrators must be comfortable with privileged access to perform necessary maintenance to processes and services, discovery of system information, and configuration of basic security measures.

This lab will have a time limit of 60 minutes in which the administrator must complete as many objectives as possible. Once complete, the system will be checked and scored.

### Time Limit

- 60 minute

### Operating System

- CentOS7
- hostname: centostestvm (Private Domain)
- Login: testuser
- Password: castic123

### Tools

- Google Searching
- Personal Documentation

## Objectives

### User Management

- Create a new admin user named “admin” on the system with ssh access.

- Create an ssh-key for the new admin user.

- Create a group called LabUsers

- Create two new users john and sara and add them to group LabUsers. Make sure to add passwords for the new users.

- Create a shared directory /home/LabUser_Documents for the new group LabUsers and login as john and sara to create a file. Make sure the files created by the users can only be read (not executed and written) by other users within the LabUser_Documents directory.

### Package Management

- Correct yum repo enabled setting

- Update only the security packages on the Linux system

- Configure the Extra Packages for Enterprise
  - Linux (EPEL)
  - Repo URL: 
 https://dl.fedoraproject.org/pub/epel/7/x86_64/

- Add GPG key checking on the EPEL repository to ensure authenticity of packages.

- Install python3.6

- Install Apache Webserver

- Install Anaconda
  - Installation Script: https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

- Check the current kernel version and compare against the latest kernel version with the base repository.

### Storage Configuration

- Mount a storage device as an ext4 file-system that will be persistent after system rebooting.

### Networking

- List open ports

- Resolve the SSH connection issue when trying to connect to centostest.ad.fiu.edu
  - Hint: use ping and nslookup for clues

- Check open xrdp port 3389 connection on centostest.ad.fiu.edu

- Open ports for HTTP and HTTPS and check to confirm

- Check the url to make sure HTTP is working correctly

- Close FTP, Telnet, and all VNC ports

- Disable eth1 ethernet port

- Find the default gateway IP address

- Allow new users to connect via ssh

- Disable ICMP
 

### File Transferring and Compression

- Compress the directory called ansible-role-ntp within /testuser/Downloads/ as a zip and tar.

- Compaire the byte size of the two zip and tar

- Securely transfer the compressed directory to another server called: ubuntutestvm.p.fiu.edu

### Processes

- A process is consuming the system’s CPU, shut down this process.

- A parent process is running a child process called “sleep 1”. Remove this runaway process. 

- Adjust the nice level of the httpd process to 10 priority.

### Memory

- Gather system information:

1. Block Device Information

2. System Memory

3. CPU Information

4. Storage Mount Locations

5. PCI Slot Information

6. Processes owed by user "mikey"  

### Discovery

- Find a file on the system called “lost.txt”

- Find all files owned by user “test”

- Search the manual page names and descriptions for the keyword “network” and append to a file called “networking_commands.txt”

### SELinux

- Enable SELinux by updating the config file

- Restore the files 1-50 context headers within the user’s test home/test/Documents as user_home_t

- Create users that are mapped to the SELinux user_u and add john and sara to mappings.

- Log out of your current session, and log in as the Linux jennifer to confirm mapping. 

- Ensure the SELinux user xguest can not mount media