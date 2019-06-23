# Secure Shell SSH

- /etc/sshd_config
- /etc/ssh_config
- man ssh

## Generating Keys for login

- Place ssh public and private within ~/.ssh
- Add config file if managing multiple keys

> ssh-keygen
> ssh-copy-id -i user@hostname.com

## Configuring ssh config for many private keys

- Make sure all files are permission set 600, only the user should have permissions to read and write
- Add as many entries as needed

> touch ~/.ssh/config
> vim  ~/.ssh/config

```  ~/.ssh/config
Host           host_nick_name
HostName       host.domain.con
IdentityFile   ~/.ssh/host_private_key
User           user_login_name
```

## Restricting user access

Limit access for user via ip, subnet, username
> vim /etc/ssh/sshd_config

``` /etc/ssh/sshd_config
AllowUsers voltaire@131.94.186.74 root@131.94.186.74/24
```

> systemctl restart sshd

Resources:

Open SSH Man Page
http://man.openbsd.org/ssh_config

Best way to use multiple SSH private keys on one client
https://stackoverflow.com/questions/2419566/best-way-to-use-multiple-ssh-private-keys-on-one-client/2419609#2419609
