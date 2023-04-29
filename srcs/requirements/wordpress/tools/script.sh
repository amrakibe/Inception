#!/bin/bash
mkdir /var/www && mkdir /var/www/html
cd /var/www/html

wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm -rf /var/www/html/latest.tar.gz
cp -r ./wordpress/* .
rm -rf wordpress

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
mv wp-cli.phar /var/www/html
wp core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
mv /wp-config.php /var/www/html/wp-config.php

sed -i -r "s/database_name_here/${MYSQL_DATABASE}/g" wp-config.php
sed -i -r "s/username_here/${MYSQL_USER}/g" wp-config.php
sed -i -r "s/password_here/${MYSQL_PASSWORD}/g" wp-config.php


wp core install --url=${DOMAIN_NAME}/ --title=${WP_TITLE} --admin_user=${ADMIN_WP_USER} --admin_password=${ADMIN_WP_PASSWORD} --admin_email=${ADMIN_WP_EMAIL} --skip-email --allow-root
wp user create ${WP_USR} ${WP_USER_EMAIL} --role=author --user_pass=${WP_USER_PASSWORD} --allow-root
wp plugin update --all --allow-root

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
mkdir -p /run/php

/usr/sbin/php-fpm7.3 -F
