# Secure Shell SSH

- /etc/sshd_config
- /etc/ssh_config
- man ssh

## Restricting user access

Limit access for user via ip, subnet, username
> vim /etc/ssh/sshd_config

``` /etc/ssh/sshd_config
AllowUsers voltaire@131.94.186.74 root@131.94.186.74/24
```

> systemctl restart sshd


