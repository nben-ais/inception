FROM debian:buster

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server && apt-get update

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mysql start

CMD ["mysqld"]

#CMD ["tail", "-f"]