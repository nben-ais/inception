FROM debian

WORKDIR /var/www/html

RUN apt update && apt upgrade -y

RUN apt-get install php php-fpm php-mysql -y

RUN apt install wget && cd /tmp && wget https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz -C /var/www/html

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

CMD ["php-fpm8.2", "-F"]
