FROM debian:buster

RUN apt-get update -y

RUN apt-get install -y php7.3 php7.3-mysql wget

RUN mkdir -p /var/www/html/

RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php

CMD	[ "php7.3", "-S", "0.0.0.0:500", "/var/www/html/adminer.php"]
