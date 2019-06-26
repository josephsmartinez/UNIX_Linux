## LAB 1 Make sure user apache has no login and add a user to the apache group

> useradd mike
> yum install httpd
> usermod -aG apache mike
> cat /etc/passwd
> id mike

``` /etc/passwd | grep acahe
apache:x:48:48:Apache:/usr/share/httpd:/sbin/nologin
```

## LAB 2

## LAB 3