FROM debian:buster

RUN apt-get update -y && apt-get install nginx -y

COPY ./conf/config.conf /etc/nginx/sites-available/default

CMD ["nginx" , "-g" , "daemon off;"]
