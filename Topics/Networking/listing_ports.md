# Checking and Testing Open Ports

- cat /etc/services
- `netstat` Display network connections
- `lsof`
- `nmap`

## Checking all TCP and UDP connections

-a: sockets t: TCP connections -u: UDP connections -p: PID -n: numeric address
> netstat -atupn

-l:  Show only listening sockets
> netstat -tulpn | grep LISTEN

All sessions
> netstat -atp

Active sessions
> netstat -tp

Displays routing table
> netstat --route

Attempts to display software using ports
> netstat --program

-P:  inhibits the conversion of port numbers to port names
-n:  inhibits the conversion of network numbers to host names
> lsof -n -P | grep LISTEN

Resources:

https://www.cyberciti.biz/faq/unix-linux-check-if-port-is-in-use-command/