FROM debian:buster

RUN apt-get update -y && apt-get install nginx -y 

COPY ./config.conf /etc/nginx/nginx.conf
COPY ./app /var/www/html

CMD ["nginx" , "-g" , "daemon off;"]