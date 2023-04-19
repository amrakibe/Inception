FROM debian:buster

RUN apt-get update -y && apt-get install apache2 php libapache2-mod-php -y && apt-get install wget -y

RUN wget -O /var/www/html/adminer.php https://github.com/vrana/adminer/releases/latest/download/adminer-latest-en.php -y

RUN systemctl restart apache2 -y

