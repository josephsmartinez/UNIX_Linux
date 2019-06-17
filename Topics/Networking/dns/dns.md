# Domain Name Servers

## Commands

- nslookup
- hostname
- hostnamectl

## Checking the DNS for records

> yum -y install whois
> whois www.google.com
> yum whatprovides dig
> yum install bind-utils
> man dig
> dig www.google.com

## Configure a DSN Server

> yum install bind bind-utils

Update named.conf to allow caching
> vim /etc/named.conf
Make sure configuration are set correctly
> named-checkconf /etc/named.conf
Open port 53
> firewall-cmd --list-all

## Maintaining DNS Zones

Zone are configured in /etc/named.conf
> vim /etc/named.conf

```conf
zone "la.local" in{
  type master;
  file "la.local.zone";
};
```

> touch /etc/la.local.zone
> vim /etc/la.local.zone

``` config
$ORIGIN la.local
$TTL 600

@   IN SOA  dns1.la.local. (
    1
    21600;
    3600;
    604800;
    86400;

);

webserver IN A 10.9.8.80
client1   IN A 10.9.8.25
client2   IN A 10.9.8.26
mail      IN A 10.9.8.150
dns1      IN A 10.9.8.53
dns2      IN A 10.9.8.54

www       IN CNAME webserver

    IN MX 10  mail.la.local
    IN MX 20  labackup.ca.local

    IN NS dns1.la.local
    IN NS dns2.la.local
```

Create the new zone file in /etc/

Resources:

How To Point to DigitalOcean Nameservers From Common Domain Registrars
https://www.digitalocean.com/community/tutorials/how-to-point-to-digitalocean-nameservers-from-common-domain-registrars

How To Configure BIND as a Private Network DNS Server on CentOS 7
https://www.digitalocean.com/community/tutorials/how-to-configure-bind-as-a-private-network-dns-server-on-centos-7

/ETC/NAMED.CONF REDHAT
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/deployment_guide/s1-bind-namedconf

What is a DNS Zone
https://ns1.com/resources/dns-zones-explained