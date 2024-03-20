service mysql start
mysql <<EOF
CREATE USER 'nben-ais'@'%' IDENTIFIED BY 'Nouhaila@123=';
CREATE DATABASE mydatabase;
GRANT ALL PRIVILEGES ON mydatabase.* TO 'nben-ais'@'%';
FLUSH PRIVILEGES;
EOF
mysqld