#!/bin/bash

install_mutt(){
    if yum list installed mutt >/dev/null 2>&1; then
        echo "mutt already installed"
    else
        echo "Installing mutt"
        yum install -y mutt
    fi
}

userSettings(){
    echo "config user settings"

    mkdir /home/$USER/.mutt &&
    mkdir /home/$USER/.mutt/cache &&
    touch /home/$USER/.mutt/certificates &&
    touch /home/$USER/.mutt/certificates &&
    touch /home/$USER/.mutt/muttrc &&
    touch /home/$USER/.mutt/passwords

echo '''
# About Me
set from = "test@test.edu"
set realname = "Test User"

# # My credentials
set smtp_url = "smtp://test@test.edu@outlook.office365.com:587/"
source "gpg -d ~/.mutt/passwords.gpg |"
set smtp_pass = "$my_pass"
set imap_user = "test@test.edu"
set imap_pass = "$my_pass"

# # My mailboxes
set folder = "imaps://outlook.office365.com:993"
set spoolfile = "+INBOX"

# # Where to put the stuff
set header_cache = "~/.mutt/cache/headers"
set message_cachedir = "~/.mutt/cache/bodies"
set certificate_file = "~/.mutt/certificates"

# # Etc
set mail_check = 30
set move = no
set imap_keepalive = 900
set sort = threads
set editor = "vim"
#
# # GnuPG bootstrap
# # source ~/.mutt/gpg.rc
''' > /home/$USER/.mutt/muttrc
}

setPassword(){
    echo "change email password? [y/n]"
    read change_email
    if [ $change_email -eq 'y' || $change_email -eq 'Y']; then
        while true; do
            echo "enter password"
            read password1
            echo "enter password again"
            read password2
            if [ $password1 -ne $password2]; then
                echo "passwords did not match"
            else
                break
        done

        # Set up gpg key and encrypted passwords

    else
        
    


}

sendMail(){
    echo "Testing 1,2,3..." | mutt -s "subject" josemart@fiu.edu
}


install_mutt
userSettings
setPassword
sendMail