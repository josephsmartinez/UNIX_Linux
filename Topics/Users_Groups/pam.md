# Configuring Plug in Authenticaion

- /etc/pam.conf (may are may not be there)
- /etc/pam.d/ (will take persidence over /etc/pam.conf)

Configure PAM
PAM = plugable authentication modules

A command/program can be PAM aware

PAM can be used to configure e.g. login to use Active Directory or LDAP

Use ldd to see if command use PAM libraries

ldd /usr/bin/passwd | grep pam
Each command that will use PAM will have an entry in /etc/pam.d with its PAM configuration

A good example of PAM configuration is showed in pam_tally2 module man page

pam_tally2: The login counter (tallying) module
At the end of man page there is an example to configure login to lock the account after 4 failed logins
man pam_tally2


https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/managing_smart_cards/pluggable_authentication_modules