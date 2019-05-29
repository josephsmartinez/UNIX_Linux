# Managing sudo access and limiting user commands

## Configuration files

- /etc/sudoers

## Commands

- visudo

## Providing sudo access to users

> visudo

Increase sudo security by requiring a password each time the sudo command is 
used and disabling use of the wheel group within the sudoers file.

``` /etc/sudoers
#%wheel     ALL=(ALL)       ALL
cloud_user  ALL=(ALL)       ALL
pbeesly     ALL=(ALL)       ALL
jhalpert    ALL=(ALL)       ALL
Defaults    timestamp_timeout=0
```

