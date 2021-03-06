# SELINUX

- /etc/selinux
- `semanage fcontext -l` defines the contexts
- matchpathcon

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

Get the current SELinux boolean values
> getsebool -a
SELinux Policy Management boolean tool
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

## Creating Confined Users in SELinux

create user(s) that are mapped to the SELinux user_u user.
> useradd -Z user_u newuser
> useradd -Z user_u staffuser

Map Linux user jhalpert to SELinux user user_u:
> semanage login -a -s user_u newuser

Map Linux user pbeesley to SELinux user staff_u:
> semanage login -a -s staff_u staffuser

Check the user mappings:
> semanage login -l

Log out of your current session, and log in as the Linux newuser
> id -Z

NOTE: We can see our Linux users successfully mapped to the assigned SELinux users.

Ensure the SELinux user xguest can not mount media
Check SELinux booleans for "xguest":
> getsebool -a | grep xguest

We see "xguest_mount_media" is an option and it is enabled, so lets disable it.

Disable SELinux boolean "xguest_mount_media":
> setsebool -P xguest_mount_media off

Check to make sure our changes were successful:
> getsebool -a | grep xguest

We can see our change was successful.
Put SELinux into enforcing mode and ensure that setting is persistent
Check SELinux state:
> getenforce

It is in permissive mode, so we need to change it to enforcing mode.
Put SELinux into enforcing mode:

> setenforce 1  

Check to make sure SELinux is now in enforcing mode:
> getenforce

We can see our change worked and SELinux is now in enforcing mode.
Ensure SELinux boots into enforcing mode:

> vi /etc/selinux/config

``` conf
SELINUX=enforcing
```

Resources:

SELinux
https://wiki.centos.org/HowTos/SELinux

SELINUX CONTEXTS – LABELING FILES
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/selinux_users_and_administrators_guide/sect-security-enhanced_linux-working_with_selinux-selinux_contexts_labeling_files

SECURITY-ENHANCED LINUX
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/security-enhanced_linux/index

CONFINED AND UNCONFINED USERS
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/security-enhanced_linux/sect-security-enhanced_linux-targeted_policy-confined_and_unconfined_users

SELinux/Users and logins
https://wiki.gentoo.org/wiki/SELinux/Users_and_logins

Difference between a Confined User (staff_u) and a Confined Administrator.
https://danwalsh.livejournal.com/66587.html