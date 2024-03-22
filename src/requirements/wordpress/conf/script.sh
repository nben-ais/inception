# Copy config file
cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php


#Edit config file, and set attributes from env
sed -i "s/localhost/$DB_HOST/g" /var/www/html/wordpress/wp-config.php
sed -i "s/database_name_here/$DB_NAME/g" /var/www/html/wordpress/wp-config.php
sed -i "s/username_here/$DB_USER/g" /var/www/html/wordpress/wp-config.php
sed -i "s/password_here/$DB_PASSWORD/g" /var/www/html/wordpress/wp-config.php
