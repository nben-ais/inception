FROM debian:buster

WORKDIR /app

RUN apt-get update && apt-get install -y nginx

COPY conf/default /etc/nginx/sites-available/default

CMD ["nginx" , "-g", "daemon off;"]


#/usr/share/nginx/html