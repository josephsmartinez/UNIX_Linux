# NPTD and Time Services

- NTP updates the clock
- /etc/chrony.conf

## Configure a System to Use Time Services

> timedatectl
> timedatectl set-ntp false
> timedatectl list-timezone
> tzselect
> timedatectl set-timezone America/Chicago
> date
> systemctl status chronyd
> chronyc sources -v

```
210 Number of sources = 4

  .-- Source mode  '^' = server, '=' = peer, '#' = local clock.
 / .- Source state '*' = current synced, '+' = combined , '-' = not combined,
| /   '?' = unreachable, 'x' = time may be in error, '~' = time too variable.
||                                                 .- xxxx [ yyyy ] +/- zzzz
||      Reachability register (octal) -.           |  xxxx = adjusted offset,
||      Log2(Polling interval) --.      |          |  yyyy = measured offset,
||                                \     |          |  zzzz = estimated error.
||                                 |    |           \
MS Name/IP address         Stratum Poll Reach LastRx Last sample               
===============================================================================
^+ 12.167.151.2                  3   6   377    76  -1417us[-1232us] +/-   78ms
^+ 0.time.dbsinet.com            2   7   377    76    -94us[  +91us] +/-   59ms
^+ palpatine.pha.lt              2   7   377    78  +6820us[+7005us] +/-   93ms
^* ntp.xtom.com                  2   6   377    11  +1103us[+1123us] +/-   67ms
```

- The asterisk indicates the source which chronyd service is set to
- The system send queries to the time server(s)
- Time servers can be local or remote servers in other location around the worlds
- The Stratum provide the quility of the source which is the number of hops to get the source reference

If you change the time pools within /etc/chrony.conf restart chronyd and check the time sync
> systemctl restart chronyd
> chronyc sources -v 
> datetimectl