# About Domain Name Servers

## Keywords

BIND - BIND or named is the most widely used Domain Name System (DNS) software on the Internet. On Unix-like operating systems it is the de facto standard

Access Control Lost (ACL) - clause available in BIND 9.x named.conf. The acl clause allows fine-grained control over what hosts or users may perform what operations on the name server.

Reverse Zones - reverse DNS resolution is the querying technique of the Domain Name System to determine the domain name associated with an IP address

Forward Zone - lookup zone is a DNS zone in which hostname to IP address relations are stored.

Zone Transfer - process of replicating a zone file to another name server, and is accomplished by copying the zone file information from the master server to the secondary server. Zone transfers take place when names and IP address mappings change in a domain.

Records - allows you to retrieve the domain name records for the domain name on the web.

Address (A) record - address record that maps a fully qualified domain name (FQDN) to an IP address.

Quad Address (AAAA) Record - specifies IPv6 address for given host.

Canonical Name CNAME - when a name server finds a CNAME record, it replaces the name with the canonical name and looks up the new name. 

Mail Exchange (MX) Record - used to identify mail servers to which mail should be delivered for a domain.

Name Server (NS) Record - identifies which DNS server is authoritative for a particular zone

Start of Authority (SOA) Record - stores information about the name of the server that supplies the data for the zone, the administrator of the zone and the current version of the data.

Text (TXT) Record -  allows domain administrators to insert any text into the DNS record. It is usually used to denote facts about the domain.

Foward Lookup - identifies which DNS server is authoritative for a particular zone

Reverse Lookup -  requires you to enter the IP address that has a corresponding host name

Primary Nameserver - Primary servers directly obtain data through local files. Secondary servers obtain information from zone transfers with a secondary source

## DNS files to configure

/etc/name.conf
/etc/named/zones/
/etc/resolv.conf

## Using linux command line tools

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

CNAME
https://blog.dnsimple.com/2011/11/introducing-alias-record/