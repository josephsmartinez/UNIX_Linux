# Redhat Package Manager rpm

Query all installed packages
> rpm -qa

Update package
> rpm -U

Upgrade
> rpm -F

Install, verbos, hash progress bar
> rpm -ivh nano-2.3.1-10.el7.x86_64.rpm

List file when package is installed
> rpm -ql nano

List all documentation files when package isntalled
> rpm -qd nano

Earse packages
> rpm -e nano

Query package owning file `-f`
> rpm -qf myfilename

Resources:

rpmbuild(8) - Linux man page
https://linux.die.net/man/8/rpmbuild

https://www.tecmint.com/20-practical-examples-of-rpm-commands-in-linux/