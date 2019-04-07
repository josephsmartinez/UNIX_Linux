# Remote Desktop for Linux Environments

10 Fast and Secure Remote Desktop Client Software for Linux
https://www.ubuntupit.com/10-fast-and-secure-remote-desktop-client-software-for-linux/

## Clients

### Vinagre RDP client for CentOS7


## Servers
### xrdp
xrdp is an Open Source Remote desktop Protocol server. First of all we need to install EPEL repository and xrdp server:

yum -y install xrdp
systemctl start xrdp.service
firewall-cmd --permanent --add-port=3389/tcp
firewall-cmd --reload
firewall-cmd --list-all
netstat -an | grep 3389

https://www.itzgeek.com/how-tos/linux/centos-how-tos/install-xrdp-on-centos-7-rhel-7.html

## nomachine

https://www.nomachine.com/


## Fedora

[How to configure XRDP on Fedora 27+](https://ask.fedoraproject.org/en/question/115753/how-to-configure-xrdp-on-fedora-27/)
