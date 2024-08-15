#!/bin/bash

mysql_install_db
mysqld

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=localhost --title=inception --admin_user=admin --admin_password=admin --admin_email=admin@admin.com --allow-root
./wp-cli.phar user create testuser testuser@example.com --user_pass=strongpassword --role=subscriber --allow-root


php-fpm8.2 -F
# -Fはphp-fpmをフォアグラウンドで実行するオプション
