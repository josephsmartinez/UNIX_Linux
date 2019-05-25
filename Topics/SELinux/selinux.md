# SELINUX

- /etc/selinux
- `semanage fcontext -l` defines the contexts

## Set Enforcing and Permissive Modes for SELinux

> getenforce
> setenforce 0
> getenforce
> reboot # Changes happen on reboots

## List and Identify SELinux Files and Process Contexts

- /.autorelabel this can be configured which will relabel file and dirs when system reboots

> ls -Z
> ps auxZ | grep httpd
> restorecon [FILE or DIR]

Resets SELINUX file tags
`restorecon -Rv *`

## Restore Default File Contexts

List all context rules
> semanage fcontext -l

Adding rule for the 
> semanage fcontext -a -t http_sys_content_t '/somewebdirectory(/.*)?'
> restorecon -Rv /somewebdirectory

Remove context rule
> semanage fcontext -l | grep /somewebdirectory
> semanage fcontext -d "/somewebdirectory(/.*)?"

## Use Boolean Settings to Modify System SELinux Settings

- When software is installed you'll get different bool values

> getsebool -a
> semanage boolean -l

> yum install httpd
> systemctl start httpd
> cat /etc/httpd/conf.d/userdir.conf
> sed -i 's/disabled/public_html/g' /etc/httpd/conf.d/userdir.conf
> semanage boolean -l | grep httpd_enable_homedirs
> setsebool httpd_enable_homedirs on

Set the persistent changes after rebooting
> setsebool -P httpd_enable_homedirs on

## Diagnose and Address Routine SELinux Policy Violations

> yum install setroubleshoot-server

Resources:

SELinux
https://wiki.centos.org/HowTos/SELinux


SECURITY-ENHANCED LINUX
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/security-enhanced_linux/index

CONFINED AND UNCONFINED USERS
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/security-enhanced_linux/sect-security-enhanced_linux-targeted_policy-confined_and_unconfined_users