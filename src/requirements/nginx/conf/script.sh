
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/$KEY -out /etc/nginx/ssl/$PEM \
    -subj "/CN=Common Name" \

sed -i "s/test1/$PEM/g" /etc/nginx/sites-available/default
sed -i "s/test2/$KEY/g" /etc/nginx/sites-available/default

nginx -g "daemon off;"