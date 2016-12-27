#!/bin/bash

# Repair "==> default: stdin: is not a tty" message
sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile

export DEBIAN_FRONTEND=noninteractive
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

echo -e "\n--- APT update ---\n"
sudo apt-get update > /dev/null 2>&1

echo -e "\n--- Install utilities ---\n"
sudo apt-get install -y curl git nodejs npm ruby
sudo apt-get install -y nginx
sudo apt-get install -y memcached
sudo apt-get install -y redis-server
sudo apt-get install -y zip gzip tar
sudo apt-get install -y openjdk-8-jdk openjdk-8-jre

echo -e "\n--- Install php ---\n"
sudo apt-get install -y php-cli php-pear php-fpm php-dev libpcre3-dev
sudo apt-get install -y php-pgsql php-gd php-xsl php-mysql php-curl php-mcrypt php-memcached php-xsl php-intl php-redis

echo -e "\n--- Install mysql and phpmyadmin ---\n"
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password pass'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password pass'
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password pass"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-pass password pass"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password pass"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect none"
sudo apt-get install -y mysql-server
sudo apt-get install -y --no-install-recommends phpmyadmin

echo -e "\n--- Install composer ---\n"
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo -e "\n--- System install complete ---\n"
