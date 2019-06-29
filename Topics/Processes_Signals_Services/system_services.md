# System Services via systemctl




list failed services ``
> systemctl list-units --state=failed

list loaded services
> systemctl list-units --type=service

view the disabled/enabled settings of all units with the type "service"
> systemctl list-unit-files --type=service

list the active state of all loaded service unit configuration files
> systemctl list-units --type=service

man page shows information about unit configuration files and their locations
> systemd.unit

shows specific configuration options for a service unit configuration
> man systemd.service

list unit configuration files that are dependencies
> systemctl list-dependencies network.target

show all available targets on the system
> systemctl list-unit-files --type=target

list all service unit configuration files regardless of whether they are active or not
> systemctl --type=service --all

> systemctl list-dependencies multi-user.target
> systemctl list-dependencies multi-user.target | grep httpd

## Changing Targets

> systemctl get-default
> systemctl isolate graphical.target
> systemctl set-default graphical.target
> systemctl isolate multi-user.target
> systemctl set-default multi-user.target

## Review system timers

> systemctl list-timers
> systemctl list-unit-files | grep enabled

How To Use Systemctl to Manage Systemd Services and Units
https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units

systemctl status
systemctl --failed

https://ma.ttias.be/enable-disable-service-at-boot-on-centos-7/
