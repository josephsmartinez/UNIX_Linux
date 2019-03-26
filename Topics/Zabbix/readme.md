# Zabbix Monitoring Tool

## Installation and Configuration Specs


[Requirments](https://www.zabbix.com/documentation/3.4/manual/installation/requirements)





## Zabbix Installation and Configuration for Windows

Agent downloads can be found here:
https://www.zabbix.com/download_agents

How to Install Zabbix Agent and Add Windows Host to Zabbix Monitoring
https://www.tecmint.com/install-zabbix-agent-and-add-windows-host-to-zabbix-monioring/

ZABBIX AGENT MSI installer
http://www.suiviperf.com/zabbix/index.php

Note:  Newer agents were never officially supported for older servers (although in many cases they worked with no problems). Now 4.0 agents do not support passive checks from older Zabbix servers.

Options:
1) Downgrade agent to match server
2) Upgrade server to 4.0
3) Configure the agent checks to active.

Services Windows
services.msc

.\zabbix_agentd.exe -c ..\zabbix_agentd.win.conf --install
.\zabbix_agentd.exe --uninstall
.\zabbix_agentd.exe --start
.\zabbix_agentd.exe --stop

## Installing Zabbix Version 3.4 on a Windows System Version
1. Download correct agent version that will work with the server.
2. Unzip the downloaded file and move to the root of file system.
3. Create a log directory within the Zabbix file.
4. Install and start the Zabbix service
5. Configure Windows Firewall and Test Zabbix Agent
