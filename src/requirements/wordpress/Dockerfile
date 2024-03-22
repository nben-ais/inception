FROM debian

WORKDIR /var/www/html

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_HOST

RUN apt update && apt upgrade -y

RUN apt-get install php php-fpm php-mysql -y

RUN apt install wget && cd /tmp && wget https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz -C /var/www/html

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

COPY conf/script.sh /app/script.sh

RUN bash /app/script.sh

CMD ["php-fpm8.2", "-F"]
