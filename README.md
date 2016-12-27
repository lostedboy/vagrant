Requirements
------------
 - Vagrant (https://www.vagrantup.com/downloads.html)
 - Vagrant hostsupdater plugin (https://github.com/cogitatio/vagrant-hostsupdater)
 - Virtual box (https://www.virtualbox.org/)

Software list
-------------

* PHP 7.0.8 (composer)
* PHP extensions: php-cli php-pear php-fpm php-dev libpcre3-dev php-pgsql 
                  php-gd php-xsl php-mysql php-curl php-mcrypt php-memcached 
                  php-xsl php-intl php-redis
* Mysql 5.7 (with phpmyadmin)
* Nginx, php-fpm
* Nodejs, npm, ruby
* Memcached, redis
* Openjdk 8
* Curl, git

Installation
------------

```
$ vagrant up
```
This command will create virtual box instance with Ubuntu 15.10 accessible on 192.168.33.10
