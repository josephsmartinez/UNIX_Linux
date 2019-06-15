# Apache Web Server

## Configuraion for Apache/httpd service httpd.conf

- Once php is installed you need change the configuration file located at `/etc/httpd/conf/httpd.conf ` and append the line to except `.php` extentions:  

``` conf
#
# DirectoryIndex: sets the file that Apache will serve if a directory
# is requested.
#
<IfModule dir_module>
    DirectoryIndex index.html index.php
</IfModule>
```

## .htaccess and protecting directories

- Make sure the `AllowOverride` is set to `AuthConfig` to allow .htaccess
- Make sure in `Options` the `Indexes` option is removed  

``` conf
<Directory "/var/www/html">
    #
    # Possible values for the Options directive are "None", "All",
    # or any combination of:
    #   Indexes Includes FollowSymLinks SymLinksifOwnerMatch ExecCGI MultiViews
    #
    # Note that "MultiViews" must be named *explicitly* --- "Options All"
    # doesn't give it to you.
    #
    # The Options directive is both complicated and important.  Please see
    # http://httpd.apache.org/docs/2.4/mod/core.html#options
    # for more information.
    #
    Options FollowSymLinks

    #
    # AllowOverride controls what directives may be placed in .htaccess files.
    # It can be "All", "None", or any combination of the keywords:
    #   Options FileInfo AuthConfig Limit
    #
    AllowOverride AuthConfig

    #
    # Controls who can get stuff from this server.
    #
    Require all granted
</Directory>
```

## Create .ht access files

Create .htaccess and .htpasswd file
`htpasswd -c /var/www/html/mywebsite/.htpasswd userName`  
`touch .htaccess`  

Add the following into htaccess

``` .htaccess
AuthUserFile /var/www/html/mywebsite/.htpasswd
AuthGroupFile /dev/null
AuthName "Secure Document"
AuthType Basic
require user userName
```

## Apache Userdir disable root user

``` conf
#
# UserDir: The name of the directory that is appended onto a user's home
# directory if a ~user request is received.
#
# The path to the end user account 'public_html' directory must be
# accessible to the webserver userid.  This usually means that ~userid
# must have permissions of 711, ~userid/public_html must have permissions
# of 755, and documents contained therein must be world-readable.
# Otherwise, the client will only receive a "403 Forbidden" message.
#
<IfModule mod_userdir.c>
    #
    # UserDir is disabled by default since it can confirm the presence
    # of a username on the system (depending on home directory
    # permissions).
    #
    UserDir disabled root

    #
    # To enable requests to /~user/ to serve the user's public_html
    # directory, remove the "UserDir disabled" line above, and uncomment
    # the following line instead:
    #
    UserDir public_html
</IfModule>

#
# Control access to UserDir directories.  The following is an example
# for a site where these directories are restricted to read-only.
#
<Directory "/home/*/public_html">
    AllowOverride FileInfo AuthConfig Limit Indexes
    Options MultiViews Indexes SymLinksIfOwnerMatch Includes
    Require method GET POST OPTIONS
</Directory>
```


## Adding custom log formats

> vim /etc/httpd/conf/httpd.conf

## Apache Userdir with SELinux

`setsebool -P httpd_enable_homedirs true`
`chcon -R -t httpd_sys_content_t /home/testuser/public_html`

## Deployment of a full Web Server with SSL

Install
> yum install httpd

Create Virtual Host
> vim conf/httpd.conf

Additional directories can be added for virtual host

``` conf
# Supplemental configuration
#
# Load config files in the "/etc/httpd/conf.d" directory, if any.
IncludeOptional conf.d/*.conf
#IncludeOptional vhost.d/*.conf
```

> mkidr /etc/httpd/vhost.d

Edit the /etc/hosts file

> vim /etc/hosts

``` conf
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
10.0.1.238 www www.somewebsite.com
```

Create the virtualhost file

> vim /etc/httpd/vhost.d/www.somewebsite.com.conf

``` xml
<VirtualHost *:80>
    ServerAdmin admin@example.com
    ServerName example.com
    ServerAlias www.example.com
    DocumentRoot /var/www/example.com/public_html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```

Set up SSL
> cd /etc/ssl
> yum install mod_ssl
> sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/somewebsit.key -out /etc/ssl/cert/somewebsite.crt

> cd /etc/httpd/vhost.d/www.somewebsite.com_http.conf
> cp www.somewebsite.com_http.conf www.somewebsite.com_https.conf
> 

Resources:

[Apache Userdir with SELinux](https://www.if-not-true-then-false.com/2010/enable-apache-userdir-with-selinux-on-fedora-centos-red-hat-rhel/)
