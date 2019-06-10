# Managing Users

## Create, Delete, and Modify Local User Accounts

- 1-200 System user for process
- 201-999 System user for process that do not own files
- Each user can have one primary group
- /etc/passwd
- /etc/shadow
- /etc/groups
- /etc/login.defs
- /etc/default

> id
> yum install httpd
> cat /etc/passwd

``` /etc/passwd | grep acahe
apache:x:48:48:Apache:/usr/share/httpd:/sbin/nologin
```

> group apache

## Change Passwords and Adjust Password Aging for Local User Accounts

Check password information
> chage -l mike

## Using set-GID On Directories

## Configure a System to Use an Existing Authentication Service for User and Group

> yum install -y realmd
