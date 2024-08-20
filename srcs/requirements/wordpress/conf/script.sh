#!/bin/bash

# 作業ディレクトリの移動
cd /var/www/html

# wp-cli.pharのダウンロードと権限付与
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar

# WordPressのダウンロードと設定ファイル作成
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost=mariadb --allow-root

# WordPressのインストール（未インストールの場合のみ）
./wp-cli.phar core install --url="$URL" --title=inception --admin_user="$ADMIN_USER" --admin_password="$ADMIN_PASS" --admin_email="$ADMIN_EMAIL" --allow-root

# ユーザー作成
./wp-cli.phar user create "$USER_NAME" "$USER_EMAIL" --user_pass="$USER_PASS" --role="$USER_ROLE" --allow-root

# php-fpmをフォアグラウンドで実行
php-fpm8.2 -F
