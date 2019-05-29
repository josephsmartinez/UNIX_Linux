#!/bin/bash


function testuser(){
  id testuser
  testuser_home=`echo $?`
  if [ "echo $testuser_home" != 0 ]; then
    echo "testuser:x:1001:1001::/home/testuser:/bin/bash" >> /etc/passwd
    echo "testuser:$6$xhuvna4L$tYZt9gg6VeyxZIRhBYorXyOuYcmT3B5.HfmLAFCb8vjPKnI77HUANclgGVXc///XGsoPwHnKlfaZ6lCKQgKR40:18045:0:99999:7:::" >> /etc/shadow
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
}

yumRepoDisable
hiddenuser
lostfile
testuser
firewall