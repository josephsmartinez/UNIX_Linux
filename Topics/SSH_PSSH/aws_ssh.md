# Managing SSH connection on AWS

NOTE:

- chmod 700 .ssh/
- chmod 600 .ssh/authorized_keys

## Adding a new user with SSH access

`ssh-keygen -y [-f input_keyfile]`
> ssh-keygen -y
> ssh-keygen -y -f mike-key.pem

``` console
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDdjac0DSWt53wJ5VOmLt3Y504btzU2IUnXNhkOTt3yREbra2Ufl4HBnPCdj13JP7YZGW6MfGURzXoErR/zigPwbFhlsHiMEVdKfeyRajdfskhafjdskh0RvtcoyJxlDAK05T95rpaoWZ3T5hMjRy6hC7MHqjH02C9DrBcoD2wNTGVtfPrwUPZizXLvjkFnPpSmCHrjy0AoxUrWZIhdDpAneXfV5EfFXVjGWVp5+LqcQqesbMAdX2qAvkM23BLaRuORZm5+2wGTlhnymH/yYd/JzmDI5iiMKdw5suEV7nJE+v6e1Knz48wQWrC2SrkxlFLfH7A6GoR06TW1SgV6fsWp7heb
```

Copy the public key information to the new user's `autherized_keys` file

> cat >> .ssh/authorized_keys

Resources:

https://aws.amazon.com/premiumsupport/knowledge-center/new-user-accounts-linux-instance/