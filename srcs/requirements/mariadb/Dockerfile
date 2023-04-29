FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y

RUN sed -i '28s/127.0.0.1/0.0.0.0/'  /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i '19s/#port/port/'  /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh /

RUN service mysql start

RUN chmod 777 /script.sh

CMD ["/script.sh"]
