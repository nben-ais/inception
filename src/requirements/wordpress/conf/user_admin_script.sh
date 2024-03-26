
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core install --url=$ADMIN_URL --title=$ADMIN_TITLE --admin_user=$ADMIN_USER --admin_email=$ADMIN_EMAIL --admin_password=$ADMIN_PASSWORD --path=/var/www/html/wordpress/ --allow-root
wp user create $USER_NAME $USER_EMAIL --user_pass=$USER_PASSWORD --role=$USER_ROLE --path=/var/www/html/wordpress/ --allow-root

php-fpm8.2 -F