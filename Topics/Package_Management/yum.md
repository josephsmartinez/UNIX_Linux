# Yellow Dog Package Manager

## Group Installations



## Installing security updates

install the security plugin
> yum -y install yum-plugin-security

display all security-related updates
> yum --security check-update

list all bugs fixed
> yum updateinfo list bugzillas

Summary of advisories
> yum updateinfo summary

Upgrade all packages with security info to latest available package
> yum --security update

upgrade all packages with security info to last security update
(as opposed to the latest possible update)
> yum --security update-minimal

Help
> man yum
> yum --help

Resources:

Installing security updates only with CentOS yum
https://alvinalexander.com/linux-unix/centos-yum-installing-only-security-updates