# Making Adjustment to GNOME


## Remove GNOME 

### RHEL

Find all the packages you want to remove.
> yum list installed | grep -Pi '(gnome|lxde|xfce)'
Then you can go and uninstall them.
> yum remove gnome-package-name

### Ubuntu

List all packages

## Resources

https://c-nergy.be/blog/?p=12073

http://c-nergy.be/blog/?p=12043

http://manpages.ubuntu.com/manpages/bionic/man8/pklocalauthority.8.html


