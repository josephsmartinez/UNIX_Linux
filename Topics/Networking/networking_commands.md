# Networking Commands

ip is a very powerful program that can do many things. Older (and more specific) utilities such as ifconfig and route are often used to accomplish similar tasks.
> ip
> ifconfig
> route
> iptables
ping is used to check whether or not a machine attached to the network can receive and send data; i.e. it confirms that the remote host is online and is responding.
> ping
traceroute is used to inspect the route which the data packet takes to reach the destination host, which makes it quite useful for troubleshooting network delays and errors.
> traceroute
Queries network interfaces and can also set various parameters such as the speed
> ethtool
Displays all active connections and routing tables. Useful for monitoring performance and troubleshooting
> netstat
Scans open ports on a network. Important for security analysis
> nmap
Dumps network traffic for analysis
> tcpdump
Monitors network traffic in text mode
> uptraf
Combines functionality of ping and traceroute and gives a continuously updated display
> mtr
Tests DNS workings. A good replacement for host and nslookup
> dig
> wget
> curl
> sftp
> scp
> nmtui
> nmcli
> route
Older ip address and hostname resolver
> nslookup
> host server.fiu.edu
> dhclient
> hostnamectl

## Trouble shooting

> nc -vz code42.example.com 443
> telnet code42.example.com 443

https://support.code42.com/CrashPlan/5/Troubleshooting/Test_your_network_connection

Resources:

Connecting to VM
https://www.youtube.com/watch?v=8V4Ez4NUHAk


https://www.serverlab.ca/tutorials/linux/administration-linux/how-to-configure-centos-7-network-settings/

ARP
`arp -s hostname hw_addr`
http://users.cs.fiu.edu/~esj/cgs4285/class11.html

Bridging the Virtual Box machine with the host
https://coderwall.com/p/yx23qw/access-your-virtualbox-guest-localhost-from-your-host-os


3 Ways to Find Out Which Process Listening on a Particular Port
https://www.tecmint.com/find-out-which-process-listening-on-a-particular-port/
