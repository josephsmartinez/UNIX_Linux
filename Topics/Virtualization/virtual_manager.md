# Virualization


## Configure a Physical Machine to Host Virtual Guests

> yum install virt-manager virt-viewer qemu-kvm qemu-img
> yum install libvirt libvirt-python python-virtinst libvirt-client -y

Enables VM to start on boot
> systemctl enable libvirtd
> systemctl start libvirtd

Check if vituralization is enabled
> cat /proc/cpuinfor | grep vmx

## Install and Run VM

> 

## Install Red Hat Enterprise Linux Systems as Virtual Guests

You can run Virtual Machine Manager to install and create VM on the host.

Arch Linux ~600M
http://mirrors.acm.wpi.edu/archlinux/iso/2019.05.02/

## Configure Systems to Launch Virtual Machines at Boot

> virsh
> list --all
> autostart [vm-name]

Resources:

Allow BIOS for vmware virtualization
https://www.virtuallyghetto.com/2012/08/how-to-enable-nested-esxi-other.html

VMware ESXi Installation and Setup
https://docs.vmware.com/en/VMware-vSphere/6.7/vsphere-esxi-67-installation-setup-guide.pdf

How to build a home lab using your PC
https://www.vmwareblog.org/build-home-lab-using-pc-part-1-esxi-6-7-u1/