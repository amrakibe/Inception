#!/bin/bash
mkdir /var/www && mkdir /var/www/html
cd /var/www/html

wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm -rf latest.tar.gz
mv ./wordpress/* .

/usr/sbin/php-fpm7.3 -F