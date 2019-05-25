# System Targets

/usr/lib/systemd/system
/etc/systemd/system/
ls -lh /etc/systemd/system/default.target

## Types of targets


> systemctl list-units --type=target
> systemctl -t help
> systemctl list-dependencies multi-user.target
> systemctl get-default
> systemctl list-dependencies graphical.target
> systemctl list-dependencies emergency.target
> systemctl list-dependencies rescue.target

> systemctl isolate [Target Type]
> systemctl get-default
> systemctl set-default multi-user.target