Requirements
------------
 - Vagrant (https://www.vagrantup.com/downloads.html)
 - Vagrant hostsupdater plugin (https://github.com/cogitatio/vagrant-hostsupdater)
 - Virtual box (https://www.virtualbox.org/)

Software list
-------------

* PHP 5.6 (composer)
* PHP extensions: php5-cli php-pear php5-fpm php5-dev libpcre3-dev, 
                  php5-pgsql php5-sqlite php5-gd php5-xsl php5-mysql 
                  php5-curl php5-mcrypt php5-memcached php5-xsl php5-intl 
                  php5-redis
* Mysql 5.5 (with phpmyadmin)
* Nginx, php-fpm
* Nodejs, ruby, 
* Memcached, redis
* Openjdk 8

Installation
------------

```
$ vagrant up
```
This command will create virtual box instance with Ubuntu 15.10 accessible on 192.168.33.10
