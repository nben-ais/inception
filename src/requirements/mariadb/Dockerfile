FROM debian:bullseye

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/script.sh /app/script.sh

RUN chmod 777 /app/script.sh

CMD ["bash", "/app/script.sh"]