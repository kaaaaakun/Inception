#!/bin/bash

mysql_install_db
mysqld

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=$(URL) --title=inception --admin_user=$(ADMIN_USER) --admin_password=$(ADMIN_PASS) --admin_email=$(ADMIN_MAIL)  --allow-root
./wp-cli.phar user create $(USER) $(USER_MAIL) --user_pass=$(USER_PASS)  --role=$(USER_ROLE)  --allow-root


php-fpm8.2 -F
# -Fはphp-fpmをフォアグラウンドで実行するオプション
