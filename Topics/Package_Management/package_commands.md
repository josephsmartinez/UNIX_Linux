# Package Management and REPOs

## Commands

- rpm
- yum
- apt
- dnf

## About

Something

## Install and Update Software Packages from Red Hat Network, YUM REPO

- NEVER ASSUME ALL PACKAGES NEED UPDATING
- DONE RUN yum update -y WITHIN A COMPLEX PRODUCTION ENVIRONMENT


> yum check-update
> yum search apache
> yum info httpd
> yum whatprovides httpd
> yum install httpd
> yum remove httpd

## Install and Update Software Packages from Red Hat Network, RPM REPO

> yumdownloader
> yum search nano
> yumdownloader nano

> rpm -i nano-2.3.1-10.el7.x86_64.rpm
> rpm -qa nano
-OR-
> yum localinstall nano-2.3.1-10.el7.x86_64.rpm
> yum list installed nano

Update package
> rpm -U 

Upgrade
> rpm -F 

Install, verbos, hash progress bar
> rpm -ivh nano-2.3.1-10.el7.x86_64.rpm

List file when package is installed
> rpm -ql nano

List installed package (if package is missing, returns nothing)
> rpm -qa 

List all documentation files when package isntalled
> rpm -qd nano

Earse packages
> rpm -e nano

## Managing Repositories

- /etc/yum.repos.d/

> yum repolist
> yum repolist all
> yum-config-manager --add-repo=https://dl.fedoraproject.org/pub/epel/7/x86_64/
> yum install python36
> yum repolist all

Disable repos
> vim /etc/yum.repos.d/[REPO]    # set to zero (0)
> yum-config-manager --disable [REPO ID]
> yum repolist
> yum repolist all

## Configuring a Local Repository: Configure the GPG Key

- /etc/pki/rpm-gpg/

> yum-config-manager --add-repo=https://dl.fedoraproject.org/pub/epel/7/x86_64/
> cd /etc/pki/rpm-gpg/
> wget https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
> vim /etc/yum.repos.d/dl.fedoraproject.org_pub_epel_7_x86_64_.repo

``` /etc/yum.repos.d/
[dl.fedoraproject.org_pub_epel_7_x86_64_]
name=added from: https://dl.fedoraproject.org/pub/epel/7/x86_64/
baseurl=https://dl.fedoraproject.org/pub/epel/7/x86_64/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
```

## The apt package manager for Ubuntu/Debain

> apt-get install apache2
> apt-get purge apahce2
> apt-get remove --purge apache2

Resources:

[EPEL Wiki](https://fedoraproject.org/wiki/EPEL): 

VERIFYING SIGNED PACKAGES
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/security_guide/sect-security_guide-updating_packages-verifying_signed_packages