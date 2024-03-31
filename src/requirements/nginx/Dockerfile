FROM debian:bullseye

WORKDIR /app

RUN apt-get update && apt-get install -y nginx && apt-get install -y openssl

COPY conf/default /etc/nginx/sites-available/default
RUN mkdir /etc/nginx/ssl
COPY conf/script.sh /etc/nginx/ssl/script.sh

RUN chmod 777 /etc/nginx/ssl/script.sh

CMD ["bash" , "/etc/nginx/ssl/script.sh"]
