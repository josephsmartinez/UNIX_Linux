# Process Command Examples


Top 20 runnning process by memory
> ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -20

Top 20 runnning process by cpu
> ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -20

Get processes from the currently log user
> ps -o pid,nice,cmd,user

Resources:

30 Useful ‘ps Command’ Examples for Linux Process Monitoring
https://www.tecmint.com/ps-command-examples-for-linux-process-monitoring/