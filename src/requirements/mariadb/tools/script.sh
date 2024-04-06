service mariadb start

sleep 2

mariadb -h localhost -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mariadb -h localhost -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mariadb -h localhost -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mariadb -h localhost -e "FLUSH PRIVILEGES;"

service mariadb stop

exec mysqld_safe 