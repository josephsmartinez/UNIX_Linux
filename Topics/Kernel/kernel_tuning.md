# Kernel Tuning

## Commands

- `sysctl`

## Directories

- /run/sysctl.d/*.conf
- /etc/sysctl.d/*.conf
- /usr/local/lib/sysctl.d/*.conf
- /usr/lib/sysctl.d/*.conf
- /lib/sysctl.d/*.conf
- /etc/sysctl.conf

- /usr/share/doc/kernel-doc-3.10.0/Documentation/sysctl/kernel.txt
- /etc/security/limits.conf

Display all variables kernel parameters at runtime
> sysctl -a

Find and Document the Value of the randomize_va_space Parameter
> sudo yum install kernel-doc
> sysctl -ar randomize_va
Temporarily Disable ICMP
> sysctl -ar icmp
> sudo sysctl -w net.ipv4.icmp_echo_ignore_all=1
Disable IPv6
> sysctl -w net.ipv6.conf.all.disable_ipv6=1
Make changes permanent
> sysctl -p

## Creating a persistant Kernel parameter option

> touch /etc/sysctl.d/custom_settings.conf

``` conf
# sysctl.conf sample
#
kernel.domainname = example.com
; this one has a space which will be written to the sysctl!
kernel.modprobe = /sbin/mod probe
```

Resources:

19.4. VERIFYING KERNEL PARAMETERS - REDHAT
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/tuning_and_optimizing_red_hat_enterprise_linux_for_oracle_9i_and_10g_databases/sect-oracle_9i_and_10g_tuning_guide-pre_installation_preparation_and_verification-verifying_kernel_parameters

Kernel tuning with sysctl - Linux Foundation
https://www.linux.com/news/kernel-tuning-sysctl