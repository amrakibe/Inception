FROM debian:buster

RUN apt-get update -y && apt-get install wget -y

RUN mkdir /var/www/html/adminer

RUN wget https://www.adminer.org/latest.php -O /var/www/html/adminer/index.php -y

RUN chown www-data:www-data /var/www/html/adminer.php

CMD [ "executable" ]
