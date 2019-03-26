# About the Script

> $ sudo du --max-depth=1 -hx /

Where we have used the options:

--maxdepth=1: Just go down one level from / and sum up everything recursively underneath in the tree.
-h: Give human-readable numbers (KB, MB, GB).
-x Stay on one filesystem; don’t look at directories that are not on the / partition. In this case that means ignore:

`/dev /proc /run /sys`

because these are pseudo-filesystems which exist in memory only; they are just empty mount points when the system
is not running. Because this is a RHEL 7 system, the following mount points are also not followed:

`/bin /sbin /lib /lib64`

since they are just symbolically linked to their counterparts under /usr.