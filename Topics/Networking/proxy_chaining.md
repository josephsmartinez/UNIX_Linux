# Proxy

- Proxy Server, is a server that acts as an intermediary for requests from clients seeking resources from other servers. 
- Proxy-Chaining, the client asks an HTTP proxy server to forward the TCP connection to the desired destination.
- Forward, Open, Reverse
- Categoiries: Anonymous, Distorting, Elite
- Anonymous, hides the user's IP address but reveals that it is a proxy
- Distorting, reveals that it is proxy but supplies a false IP address for the user
- Elite, hides both the user's information and the fact that is a proxy (highest level of anonymity)

## Proxy chain to use a browser or scanning services

> tor
> proxychain firefox
> proxychain nmap [HOST]

##  Setting Up a SOCKS5 Proxy to mask your IP Address for Web Browsing

-N Do not execute a remote command.  This is useful for just forwarding ports.
-D Specifies a local “dynamic” application-level port forwarding.
> ssh -N -D 64000 root@proxyserverIP -vvvv

Configure your web browser to connect to the loopback 127.0.0.1 on the port 
the proxy server is connected to. (This case it would be 64000)

Resources:

How to Evade Detection Using Proxychains
https://null-byte.wonderhowto.com/how-to/hack-like-pro-evade-detection-using-proxychains-0154619/