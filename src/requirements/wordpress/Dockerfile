FROM debian:bullseye

WORKDIR /var/www/html

RUN apt update && apt upgrade -y

RUN apt-get install php php-fpm php-mysql -y

RUN apt install wget -y && cd /tmp && wget https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz -C /var/www/html

RUN apt-get install -y curl

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY conf/script.sh /app/script.sh

RUN chmod 777 /app/script.sh

CMD ["bash", "/app/script.sh"]
