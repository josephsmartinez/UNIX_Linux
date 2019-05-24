# Examples for cron and at

## Schedule Tasks Using at and cron

> yum install at
> systemctl start atd
> at now +5 minutes
> at now +5 hours

Setting a system reboot for midnight
> at 12:00am
> reboot
ctl-d or ^d to exit
> atq
9       Fri May 24 00:00:00 2019 a root
> atrm 9

Sending log data via logger
> at now +1 minute
> logger "The system current uptime is $(uptime)"
ctl-d or ^d to exit
> journalctl -xn

Allow and Deny Access with atd or cron

- /etc/cron.deny
- /etc/cron.allow
- /etc/at.allow (deny all users usless entry is within file)
- /etc/at.deny (deny specific users)

> ls /etc | grep -e "^cron"
> ls /etc | grep ^at

## cron anacron crontab !=

- It is possible to place scripts with the /etc/cron.(d, daily, hourly, monthly, weekly)
- anacron bridges the gap for jobs when the systems are turned off (Only for privilieged)

> ls /etc | grep -e "^cron\." | grep -v "cron.deny"
> man anacron