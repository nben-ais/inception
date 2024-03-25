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


RUN apt-get install -y curl
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core install --url="nben-ais.42.fr" --title="My Inception" --admin_user="nben-ais" --admin_email="nben-ais@1337.student.ma" --admin_password="123456789" --path=/var/www/html/wordpress/ --allow-root
RUN wp user create username normaluser@example.com --user_pass=normaluserpassword --role=subscriber --path=/var/www/html/wordpress/ --allow-root

CMD ["php-fpm8.2", "-F"]


#

