cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

until mariadb -h mariadb -u $DB_USER -p$DB_PASSWORD -e ";"
do
    echo "Sleeping 1 sec"
    sleep 1
done

sed -i "s/localhost/$DB_HOST/g" /var/www/html/wordpress/wp-config.php
sed -i "s/database_name_here/$DB_NAME/g" /var/www/html/wordpress/wp-config.php
sed -i "s/username_here/$DB_USER/g" /var/www/html/wordpress/wp-config.php
sed -i "s/password_here/$DB_PASSWORD/g" /var/www/html/wordpress/wp-config.php

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core install --url=$ADMIN_URL --title=$ADMIN_TITLE --admin_user=$ADMIN_USER --admin_email=$ADMIN_EMAIL --admin_password=$ADMIN_PASSWORD --path=/var/www/html/wordpress/ --allow-root
wp user create $USER_NAME $USER_EMAIL --user_pass=$USER_PASSWORD --role=$USER_ROLE --path=/var/www/html/wordpress/ --allow-root
mkdir /run/php/
exec php-fpm7.4 -F
