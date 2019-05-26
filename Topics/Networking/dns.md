# Domain Name Servers

## Commands

- nslookup 
- hostname
- hostnamectl
- 

## Checking the DNS for records

> yum -y install whois
> whois www.google.com

> yum whatprovides dig
> yum install bind-utils
> man dig
> dig www.google.com


## Configure a DSN Server


Resources: 

How To Point to DigitalOcean Nameservers From Common Domain Registrars
https://www.digitalocean.com/community/tutorials/how-to-point-to-digitalocean-nameservers-from-common-domain-registrars

How To Configure BIND as a Private Network DNS Server on CentOS 7
https://www.digitalocean.com/community/tutorials/how-to-configure-bind-as-a-private-network-dns-server-on-centos-7