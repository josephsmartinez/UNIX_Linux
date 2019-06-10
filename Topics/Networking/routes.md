# Creating a defining routes

## Foward packets to the another server

> traceroute 8.8.8.8
> ssh admin@fowarding_server
> sysctl net.ipv4.ip.forward=1
> exit
> route -n
Forward the traffic to other server
> ip route add 8.8.0.0/16 protocal static metric 10 via inet 10.9.185.143 dev eth0

NOTE: if the forwarding rule was set to zero (0)
the fowarding server would drop the packets.

Resources:

Static Routes - RedHat
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/deployment_guide/s1-networkscripts-static-routes