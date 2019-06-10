# Manage Template User Environment

- /etc/skel
- /etc/security/limits.conf

## You can create default files and directories for new users

> touch /etc/skel/some_config
> useradd mike
> ls /home/mike

## Setting limits for users and groups

soft limits or hard limits can be set within

> vim /etc/security/limit.conf
