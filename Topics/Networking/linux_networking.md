# Linux Network Settings

Sections:

- Network Devices
- Predictable Network Interface Device Names

Keywords:

- Netlink socket
- Gateway
- Static Routes
- Network Manager
- Name resolution
- Domain Name Server DNS

Keyfile or Directories:

- /etc/hosts
- /etc/resolv.conf
- /etc/hosts.resolv
- /etc/network/interfaces

## Network Devices

Network devices are assocuated by their names:

- eth0, et1, ..., etc. Ehternet

- wlan0, wlan1, ..., etc. Wireless

- br0, br1, ..., etc. Bridge interfaces

- vmnet0, vmnet1, ..., etc. Virtual

## Predictable Network Interface Device Names

There are five types of names that can be given:

- eno1
- ens1
- enp2s0
- enx7837d1ea46da

The Netlink socket family is a Linux kernel interface used for inter-process communication between both the kernel and userspace processes, and between different userspace processes, in a way similar to the Unix domain sockets.
