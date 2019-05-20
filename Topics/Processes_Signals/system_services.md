# System Services via systemctl

list failed services
> systemctl --failed --type=service

list loaded services
> systemctl list-units --type=service

view the disabled/enabled settings of all units with the type "service"
systemctl list-unit-files --type=service

list the active state of all loaded service unit configuration files
systemctl list-units --type=service

 man page shows information about unit configuration files and their locations
 systemd.unit

 shows specific configuration options for a service unit configuration
 man systemd.service

 list unit configuration files that are dependencies
 systemctl list-dependencies network.target

 show all available targets on the system
 systemctl list-unit-files --type=target

list all service unit configuration files regardless of whether they are active or not
systemctl --type=service --all