
openssl passwd -1

If you want to pass along a salt to your password
openssl passwd -1 -salt yoursalt


echo -n yourpassword | shasum -a 256

https://ma.ttias.be/how-to-generate-a-passwd-password-hash-via-the-command-line-on-linux/


Everything about openssl
https://www.madboa.com/geek/openssl/


`echo -n foobar | sha256sum`

`echo -n "foobar" | openssl dgst -sha256`

## SSH Keys

- 600 Private Key Permissions 
- 644 Public Key Permissions 

> ssh-keygen
> ssh-copy-id username@remote_host

> ssh-keygen -t rsa -N "" -f centostest.key
> ssh-copy-id -i username@remote_host

> 