# Managing Users and Groups

## Commands

- `useradd`
- `userdel`
- `groupadd`
- `groupdel`
- `passwd`
- `getent`
- `id`
- `quota`

## User/Group Configuration Setting

### Default user account values

- /etc/login.defs
- /etc/default/useradd
- /etc/skel

### Account details

- /etc/passwd

### Defines accounts

- User ID
- 1-200 System user for process
- 201-999 System user for process that do not own files
- Each user can have one primary group
- UIDs typically start at 500
- Users/Groups can share an ID (not ideal)
- /etc/shadow
- /etc/group
- /etc/passwd
- /etc/default

## Creating users

> useradd
> useradd -d -e -g -G -p -s -u
> userdel
Use -r to remove their files as well

## Creating Groups

> sudo groupadd [Name of Group}
> cat /etc groups | less (To view all groups)

## Modify Accounts

> usermod
Rename account
> usermod -l jdoe jsmith
Lock account
> usermod -L jdoe
Unlock account
> usermod -U jdoe
Add user to group
> usermod -a -G Marketing

NOTE: Use the -a (append) to add information to the group not override the whole group permissions and details.

## Set password

> passwd
chage (Define password expiration policy)
Display current info:
> chage -l jdoe
Modify policy
> chage -m -M -E -W jdoe

## Create groups

> groupadd
> groupdel
> gpasswd

Add a user
> gpasswd -a
Remove a user
> gpasswd -d
Add a group admin
> gpasswd -A

## Change login shell

### Prevent an account from logging in interactively

> chsh -s /bin/nologin

## Get entries from administrative database

> getent passwd
> getent shadows
> getent group

## Change Passwords and Adjust Password Aging for Local User Accounts

change user password expiry information
> chage -l mike
Expire user password
> chage -d 0 testuser
> passwd -e testuser


## Using set-GID On Directories

## Configure a System to Use an Existing Authentication Service for User and Group (LDAP/Active Directory)

> yum install -y realmd
