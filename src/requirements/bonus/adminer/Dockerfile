FROM debian:bullseye

WORKDIR /var/www/html/

RUN apt update -y && apt upgrade -y && apt install php7.4 php7.4-cli php7.4-mysql wget -y

RUN wget https://www.adminer.org/latest.php -O index.php

CMD ["php", "-S", "0.0.0.0:8080", "index.php"]
