#!/bin/bash
mkdir /var/www && mkdir /var/www/html
cd /var/www/html

wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm -rf latest.tar.gz
cp -r ./wordpress/* .

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
mkdir /run/php

/usr/sbin/php-fpm7.3 -F