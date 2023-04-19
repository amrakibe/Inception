#!/bin/bash
service mysql start

echo "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};" > file.sql
echo "CREATE USER IF NOT EXISTS ${MYSQL_USER}@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';" >> file.sql
echo "grant all privileges on ${MYSQL_DATABASE}.* to ${MYSQL_USER};" >> file.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root123';" >> file.sql;
echo "ALTER USER 'amrakibe'@'localhost' IDENTIFIED BY 'rootPamrakibe';" >> file.sql;
echo "FLUSH PRIVILEGES;" >> file.sql

mysql < file.sql
killall mysqld

mysqld_safe