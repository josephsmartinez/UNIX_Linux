# Files, File contexts, Permissions

## Topics

Sticky Bit, File Permissions, Access Control List

## Commands

> chown
> chmod
> mask
> umask
> chcon
> stat

## Setting File Permissions

### Text method

chmod who=permissions filename
> chmod g=rx Documents
> chmod o=rx Documents
> chmod go=rx Documents

### Text method shortcuts

> chmod g+w foobar

### Numeric method


## Understanding umask

## Create and Configure Set-GID Directories for Collaboration

Files of the blueteam directory will enharent the GID
> chmod g+s /home/blueteam

## Create and Manage Access Control Lists (ACLs)

- ACL have a plus (+) at the end of the permission bits 

> getfacl file
> setfacl -m u: johndoe:rw file1
> setfacl -m m::r file1
> setfacl -d -m u:starbuck /somedir
> setfacl -m u:starbuck /somedir
> getfacl --remove-default somedir
> setfacl -x d:u:startbuck dir1
> setfacl -m g:finance:rwX,u:johndoe:rw dir1
> setfacl -R -m g:finance:rwX,u:johndoe:rw dir1
> setfacl -m g::rwx file2
The dash (-) mean std-in input from std-out
> getfacl file1 | setfacl --set-file=- file2

## Diagnose and Correct File Permission Problems

- Update the acl on a file or directory changes the MASK
- Using uppercase X will change keep the directory set to executed and not the files

> chmod -R g+rwX /tmp

- The cp command does not preserve ACL rules
- The mv command does not preserve ACL rules
- Default ACL permissions are for inheritance

## Setting the Sticky Bit Value



Things to think about...

- Does something have the proper permissions like proper group ownership
- Does it need an ACL
- Is the proper UMASK set for creating new files
- Does the /etc/bash_profile need to edited to enable UMASK persistence

Resources:

File permissions and attributes
https://wiki.archlinux.org/index.php/File_permissions_and_attributes

Linux Sticky Bit Concept Explained with Examples
https://www.thegeekstuff.com/2013/02/sticky-bit/?utm_source=feedburner