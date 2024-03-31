FROM debian:bullseye

WORKDIR /var/www/html/

RUN apt update -y && apt upgrade -y && apt-get install -y nginx

COPY conf/index.html /var/www/html/

CMD ["nginx", "-g", "daemon off;"]
