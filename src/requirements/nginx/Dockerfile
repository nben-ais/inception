FROM debian:buster

WORKDIR /app

RUN apt-get update && apt-get install -y nginx && apt-get install -y openssl

RUN mkdir /etc/nginx/ssl && chmod 700 /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nben-ais.42.fr.key -out /etc/nginx/ssl/nben-ais.42.fr.pem \
    -subj "/C=US/ST=State/L=City/O=Organization/OU=Organizational Unit/CN=Common Name" \
    && echo "Certificate generated successfully"

#RUN apt install curl
#RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#RUN 


COPY conf/default /etc/nginx/sites-available/default

CMD ["nginx" , "-g", "daemon off;"]


#/usr/share/nginx/html