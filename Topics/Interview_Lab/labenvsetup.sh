#!/bin/bash

function testuser(){
  id testuser
  testuser_home=`echo $?`
  if [ "echo $testuser_home" != 0 ]; then
    echo "testuser:x:1001:1001::/home/testuser:/bin/bash" >> /etc/passwd
    echo "testuser:$6$xhuvna4L$tYZt9gg6VeyxZIRhBYorXyOuYcmT3B5.HfmLAFCb8vjPKnI77HUANclgGVXc///XGsoPwHnKlfaZ6lCKQgKR40:18045:0:99999:7:::" >> /etc/shadow
    usermod -aG wheel testuser
  fi
}

function hiddenuser(){

}

function lostfile(){
  mkdir /usr/games/mindmaster
  touch /usr/games/mindmaster/lost.txt
}

function firewall(){
  firewall-cmd --permanent --add-port=20/tcp
  firewall-cmd --permanent --add-port=23/tcp
  firewall-cmd --permanent --add-port=5900-5910/tcp
  firewall-cmd --reload
}

function yumRepoDisable(){
yum-config-manager --disable "CentOS-7 - Updates"
yum-config-manager --disable "CentOS-7 - Base"
yum-config-manager --disable "CentOS-7 - Extras"

yum-config-manager --enable "CentOS-7 - Updates"
yum-config-manager --enable "CentOS-7 - Base"
yum-config-manager --enable "CentOS-7 - Extras"
}


function network(){
  nmcli connection add con-name "static-bridge" type bridge ifname eth1 ip4 10.0.0.180 gw4 10.100.36.1
  nmcli connection up "static-bridge"
  nmcli connection modify "static-bridge" connection.autoconnect yes

}

function selinux(){
  setenforce 0
  sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
}

function fileToTransfer(){
git clone https://github.com/AnsibleRedHatFIU/ansible-role-ntp.git
mv ansible-role-ntp /home/testuser/
chown -R testuser:testuser /home/testuser/ansible-role-ntp
}

function dnsposion(){
 echo "10.0.0.0    centostest.ad.fiu.edu centostest" >> /etc/hosts
}

function stress(){
  stress --vm-bytes $(awk '/MemFree/{printf "%d\n", $2 * 0.9;}' < /proc/meminfo)k --vm-keep -m 1
}


fileToTransfer
yumRepoDisable
hiddenuser
lostfile
testuser
firewall
network
selinux