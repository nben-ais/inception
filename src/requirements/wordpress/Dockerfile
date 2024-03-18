FROM debian

WORKDIR /var/www/html

RUN apt update && apt upgrade -y

RUN apt-get install php php-fpm php-mysql -y

RUN apt install wget && cd /tmp && wget https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz

RUN cp -R /tmp/wordpress /var/www/html/ && chown -R root:root /var/www/html/wordpress/ && chmod -R 755 /var/www/html/wordpress/

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

CMD ["php-fpm8.2", "-F"]



# Change in mariaDB config file
# Add php-fpm config file
# Add [CMD] pid 1 to wordpress container
