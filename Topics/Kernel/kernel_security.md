# Kenel Security

## Linux Kernel Security

Developing a hardened image for general use. You must create a list of possible configuration changes that should be further investigated for optimal security on general purpose servers. Below will get a list of possible kernel parameters to ensure the address space layout randomization is in effect and to examine possible network security configurations for ICMP, configured system limits managed by pam_limits.so

- /usr/share/doc/kernel-doc-3.10.0/Documentation/sysctl/kernel.txt
- /etc/security/limits.conf

Find and Document the Value of the randomize_va_space Parameter
> sudo yum install kernel-doc
> sysctl -ar randomize_va

Temporarily Disable ICMP
> sysctl -ar icmp
> sudo sysctl -w net.ipv4.icmp_echo_ignore_all=1

Make changes permanent
> sysctl -p

Resources:

Change Kernel Runtime Parameters in a Persistent and Non-Persistent Way
https://www.tecmint.com/change-modify-linux-kernel-runtime-parameters/

VERIFYING KERNEL PARAMETERS
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/tuning_and_optimizing_red_hat_enterprise_linux_for_oracle_9i_and_10g_databases/sect-oracle_9i_and_10g_tuning_guide-pre_installation_preparation_and_verification-verifying_kernel_parameters