FROM debian:bullseye

WORKDIR /app

RUN apt update && apt install -y nginx && apt install -y openssl

COPY conf/default /etc/nginx/sites-available/default

RUN mkdir /etc/nginx/ssl

COPY tools/script.sh /etc/nginx/ssl/script.sh

RUN chmod 777 /etc/nginx/ssl/script.sh

CMD ["bash" , "/etc/nginx/ssl/script.sh"]
