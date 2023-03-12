#!/bin/bash
service mysql start

echo "CREATE DATABASE wp;" > file.sql
echo "CREATE USER amrakibe@'%' IDENTIFIED BY '1234';" >> file.sql
echo "grant all privileges on wp.* to amrakibe;" >> file.sql
echo "FLUSH PRIVILEGES;" >> file.sql
mysql < file.sql
killall mysqld

mysqld_safe
