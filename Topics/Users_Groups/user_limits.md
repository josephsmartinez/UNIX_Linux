# Defining User Limits

## Directories

- /etc/security/limits.conf
- `man limits.conf`

## Example Configuration

```conf
 These are some example lines which might be specified in /etc/security/limits.conf.

           *               soft    core            0
           *               hard    nofile          512
           @student        hard    nproc           20
           @faculty        soft    nproc           20
           @faculty        hard    nproc           50
           ftp             hard    nproc           0
           @student        -       maxlogins       4
           :123            hard    cpu             5000
           @500:           soft    cpu             10000
           600:700         hard    locks           10
```




Resources:

https://access.redhat.com/solutions/61334