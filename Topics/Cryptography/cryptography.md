# Cryptography

> gpg --gen-key

```
Please select what kind of key you want:
(1) RSA and RSA (default)
(2) DSA and Elgamal
(3) DSA (sign only)
(4) RSA (sign only)
Your selection? 1

RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048) 2048

Please specify how long the key should be valid.
0 = key does not expire
d = key expires in n days
w = key expires in n weeks
m = key expires in n months
y = key expires in n years
key is valid for? (0) 0

Is this correct (y/N)? y

GnuPG needs to construct a user ID to identify your key.

Real name: janedoe
Email address: janedoe@test.edu
Comment: httpd

Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? O


┌─────────────────────────────────────────────────────┐
│ Enter passphrase                                    │
│                                                     │
│                                                     │
│ Passphrase ________________________________________ │
│                                                     │
│       <OK>                             <Cancel>     │
└─────────────────────────────────────────────────────┘

```
> gpg --list-keys 

> gpg --recipient "janedoe" --encrypt passwords
> rm passwords