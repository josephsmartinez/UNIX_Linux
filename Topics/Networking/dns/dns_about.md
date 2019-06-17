# About Domain Name Servers

## Keywords

BIND - BIND or named is the most widely used Domain Name System (DNS) software on the Internet. On Unix-like operating systems it is the de facto standard

Access Control Lost (ACL) - clause available in BIND 9.x named.conf. The acl clause allows fine-grained control over what hosts or users may perform what operations on the name server.

Start of Authority (SOA) Record - indicates which Domain Name Server (DNS) is the best source of information for the specified domain. Every domain must have an SOA record

Reverse Zones - reverse DNS resolution is the querying technique of the Domain Name System to determine the domain name associated with an IP address

Forward Zone - lookup zone is a DNS zone in which hostname to IP address relations are stored.

Zone Transfer - process of replicating a zone file to another name server, and is accomplished by copying the zone file information from the master server to the secondary server. Zone transfers take place when names and IP address mappings change in a domain.

Records - allows you to retrieve the domain name records for the domain name on the web

Address (A) record - address record that maps a fully qualified domain name (FQDN) to an IP address.

Foward Lookup - 

Reverse Lookup

Primary Nameserver

/etc/name.conf
/etc/named/zones/
/etc/resolv.conf

systemctl enable named
named-checkconf
named-checkzone

## Adding Host to DNS

Whenever you add a host to your environment (in the same datacenter), you will want to add it to DNS. Here is a list of steps that you need to take:

Primary Nameserver
Forward zone file: Add an "A" record for the new host, increment the value of "Serial"
Reverse zone file: Add a "PTR" record for the new host, increment the value of "Serial"
Add your new host's private IP address to the "trusted" ACL (named.conf.options)


Resources:

Common DNS records and their uses
https://blog.dnsimple.com/2015/04/common-dns-records/