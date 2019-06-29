# Archive, Compress, Unpack, and Uncompress Files

## About

Compressed files use less disk space and download faster than large, uncompressed files.

## Sections

- [Copy](#copy)
- [Secure Copy](#secure-copy)
- [Remote Sync](#remote-sync)

``` console
-v : verbose
-r : copies data recursively (but don’t preserve timestamps and permission while transferring data
-a : archive mode, archive mode allows copying files recursively and it also preserves symbolic links, file permissions, user & group ownerships and timestamps
-z : compress file data
-h : human-readable, output numbers in a human-readable format
--delete : this will delete the files in the destination not present in the source.
--safe-links : consider this option if you want to ignore symlinks that point outside the directory you’re copying.
-L, --copy-links : transforms a symlink into the real file or directory it targets.
```

## Copy

> cp foo bar

## Secure Copy

> scp foo bar

## Remote Sync

Usage: `rsync [OPTION...] SRC... [DEST]`

Copy/Sync Files and Directory Locally  
`rsync [OPTION...] SRC... [DEST]`  
> rsync -zvh backup.tar /tmp/backups/

Delete the files in the destination not present in the source. `--delete`
> rsync -azvh --delete /my/src/directory/ /my/dest/directory

Ignore symlinks that point outside the directory you’re copying `--safe-links`
> rsync -azvh --safe-links /my/src/directory/ /my/dest/directory

Copy/Sync Files and Directory to or From a Server
> rsync -avz rpmpkgs/ root@192.168.0.101:/home/

Copy/Sync a Remote Directory to a Local Machine
> rsync -avzh root@192.168.0.100:/home/tarunika/rpmpkgs /tmp/myrpms

Rsync Over SSH
> rsync -avzhe ssh root@192.168.0.100:/root/install.log /tmp/

Show Progress While Transferring Data with rsync
> rsync -avzhe ssh --progress /home/rpmpkgs root@192.168.0.100:/root/rpmpkgs

Do a Dry Run with rsync
> rsync --dry-run --remove-source-files -zvh backup.tar /tmp/backups/

Use of `--include` and `--exclude` Options
Include those files and directory only which starts with ‘R’ and exclude all other files and directory.
> rsync -avze ssh --include 'R*' --exclude '*' root@192.168.0.101:/var/lib/rpm/ /root/rpm

Set the Max Size of Files to be Transferred
> rsync -avzhe ssh --max-size='200k' /var/lib/rpm/ root@192.168.0.100:/root/tmprpm

Automatically Delete source Files after successful Transfer
> rsync --remove-source-files -zvh backup.tar /tmp/backups/

Set Bandwidth Limit and Transfer File
> rsync --bwlimit=100 -avzhe ssh  /var/lib/rpm/  root@192.168.0.100:/root/tmprpm/

## Resources

cp(1) - Linux man page
https://linux.die.net/man/1/cp

scp(1) - Linux man page
https://linux.die.net/man/1/scp

10 Practical Examples of Rsync Command in Linux
https://www.tecmint.com/rsync-local-remote-file-synchronization-commands/

A Practical Guide to Using rsync
https://www.createdbypete.com/a-practical-guide-to-using-rsync/