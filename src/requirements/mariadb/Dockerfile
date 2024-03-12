FROM debian

WORKDIR /app

RUN apt-get update && apt-get install -y mariadb-server

RUN chmod 777 /var/lib/mysql

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir /run/mysqld

RUN chmod 777 /run/mysqld

#CMD ["tail", "-f"]

CMD ["mysqld"]
