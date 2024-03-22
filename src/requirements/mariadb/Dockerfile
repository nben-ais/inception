FROM debian:buster

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_HOST

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/script.sh /app/script.sh

RUN bash /app/script.sh

CMD ["mysqld"]