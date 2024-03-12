FROM debian

WORKDIR /var/www/html

RUN apt update && apt upgrade -y

RUN apt-get install php php-fpm php-mysql -y

CMD ["tail", "-f"]
