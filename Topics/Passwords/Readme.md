
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

> ssh-keygen
> ssh-copy-id username@remote_host