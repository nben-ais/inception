FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    apache2 \
    php \
    php-mysql \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html/adminer \
    && wget -O /var/www/html/adminer/adminer.php https://www.adminer.org/latest-mysql-en.php \
    && ln -s /var/www/html/adminer/adminer.php /var/www/html/adminer/index.php

CMD ["apachectl", "-D", "FOREGROUND"]
