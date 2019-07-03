# Files, File contexts, Permissions

## Topics

- File Permissions
- Access Control List
- setuid
- setgid
- Sticky Bit
- Diagnose and Correct File Permission Problems

## Commands

- `chown`
- `chmod`
- `mask`
- `umask`
- `chcon`
- `stat`
- `file`
- `lsattr`
- `chattr`
- `getfacl`

## File Permissions

### Text method

chmod who=permissions filename
> chmod g=rx Documents
> chmod o=rx Documents
> chmod go=rx Documents

### Text method shortcuts

> chmod g+w foobar

### Numeric method

## Create and Manage Access Control Lists (ACLs)

NOTE:

- Only works on ext4 and xfs filesystems
- Maps to user id (UID)
- ACL have a plus (+) at the end of the permission bits

> getfacl file
> setfacl -m u:johndoe:rw file1
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

## Create and Configure Set-UID

Capital S. This means there are no execute permissions
> chmod u+s file1 && ls -l
Lower case s. This means there are execute permissions
> chmod u+x file1
> ls -l

## Create and Configure Set-GID Directories for Collaboration

chmod g+s
chmod 2700 file1

Files of the blueteam directory will enharent the GID
> chmod g+s /home/blueteam

## Setting the Sticky Bit Value

> chmod a+t file
> chmod 1777 file
NOTE: The sticky bit has no effect if other does not have execute permissions.
> chmod 1666 file
> ls -la

## Diagnose and Correct File Permission Problems

- Update the acl on a file or directory changes the MASK
- Using uppercase X will change keep the directory set to executed and not the files

> chmod -R g+rwX /tmp

- The cp command does not preserve ACL rules
- The mv command does not preserve ACL rules
- Default ACL permissions are for inheritance

## Change file attributes on a Linux file system

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

http://permissions-calculator.org/info/