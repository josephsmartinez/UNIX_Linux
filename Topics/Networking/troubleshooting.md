Port seems to be open in the firewall :

$> sudo ufw status
Status: active

To                         Action      From
--                         ------      ----
...
3000/tcp                   ALLOW       Anywhere
3000/tcp                   ALLOW       Anywhere (v6)
The server is listening alright on that port :

$> netstat -an | grep "LISTEN "
...
tcp        0      0 127.0.0.1:3000          0.0.0.0:*               LISTEN     
...
And I can even wget alright the index page :

$> wget localhost:3000
Connecting to localhost (localhost)|127.0.0.1|:3000... connected.
HTTP request sent, awaiting response... 200 OK
And the received file contains what I expect ("hello world" :).

However, when trying from another computer, or if I wget mydomain.com:3000 I get "connection refused", and nmap tells me that the port is not open :

$> nmap -A -T4 mydomain.com
Host is up (0.00032s latency).
...
Not shown: 999 closed ports
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 5.9p1 Debian 5ubuntu1 (protocol 2.0)
...
Service Info: OS: Linux
Any idea what I should try next ???

EDIT

Here's what traceroute gives :

$> traceroute mydomain.com
traceroute to mydomain.com (176.31.x.x), 30 hops max, 60 byte packets
 1  mydomain.com (176.31.x.x)  0.034 ms  0.013 ms  0.010 ms