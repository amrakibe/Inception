FROM debian:buster

RUN apt-get update -y && apt-get install nginx openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/amrakibe.key -out /etc/ssl/certs/amrakibe.crt -subj "/CN=amrakibe"


COPY ./conf/config.conf /etc/nginx/nginx.conf

CMD ["nginx" , "-g" , "daemon off;"]
