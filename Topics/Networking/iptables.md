# Using iptables to manage network settings

- /etc/

## Listing all rules

> iptable -L

## Dropping ICMP packets

> iptables -A INPUT --protocol icmp --in-interface eth0 -j REJECT
> iptables -L

Resources:

The guide to iptables
https://www.howtogeek.com/177621/the-beginners-guide-to-iptables-the-linux-firewall/

firewalld and iptables
https://www.tecmint.com/linux-firewall-iptables-interview-questions-and-answers/