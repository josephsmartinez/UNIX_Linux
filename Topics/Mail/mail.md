# Setting up Mail Services

Types:

- mutt
- postfix
- mailx

## Setting up postfix

> yum install postfix

### Creating Alises

> touch /etc/postfix/aliases
> vim /etc/postfix/aliases

``` conf
webmaster: user
chad: chad, boss
```

> postalias /etc/postfix/aliases

## Mutt: how to safely store password

Create a passwords file: ~/.mutt/passwords:

set imap_pass="password"
set smtp_pass="password"
This file can be encrypted using GPG. First, create a public/private key pair:

$ gpg --gen-key
Encrypt the passwords file:

$ gpg -r your.email@example.com -e ~/.mutt/passwords
$ ls ~/.mutt/passwords*
/home/user/.mutt/passwords   /home/user/.mutt/passwords.gpg
$ shred ~/.mutt/passwords
$ rm ~/.mutt/passwords
Add to your muttrc:

source "gpg -d ~/.mutt/passwords.gpg |"

## Sending emails with CURL

Basic implementation for email sending with CURL:

curl --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
  --mail-from 'developer@gmail.com' --mail-rcpt 'edm-user@niceperson.com' \
  --upload-file mail.txt --user 'developer@gmail.com:your-accout-password'
  
In order to send an email with CURL, you need to set up SMTP connection. Most often Google's or Yahoo's outgoing mail servers are used for testing email sending with SMTP. Please note that you must turn on access for less secure apps in Gmail settings and similar additional security settings may apply for Yahoo as well.

Resources:

Postfix
http://www.postfix.org/

https://www.thegeekdiary.com/how-to-install-and-configure-mutt-in-centos-rhel/

https://wiki.archlinux.org/index.php/mutt#Passwords_management

Mutt gmail config
https://github.com/ylogx/dotfiles/blob/master/home/.muttrc