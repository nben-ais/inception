FROM debian

WORKDIR /app

RUN apt-get update && apt-get install -y mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir /run/mysqld
RUN chmod 777 /run/mysqld

CMD ["mysqld"]
