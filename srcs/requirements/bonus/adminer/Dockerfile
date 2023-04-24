FROM debian:buster

RUN apt-get update -y && apt-get install wget -y && apt-get install -y php7.3

RUN mkdir -p /var/www/html/ && wget https://www.adminer.org/latest.php -O /var/www/html/adminer.php

CMD [ "php7.3", "-S", "0.0.0.0:5000", "-t", "/var/www/html/adminer.php" ]
