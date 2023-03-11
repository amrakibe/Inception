FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y

RUN service mysql start

COPY ./tools/script.sh /

RUN chmod 777 /script.sh

CMD ["/script.sh"]