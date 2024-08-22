#!/bin/bash

# 環境変数を使って init.sql ファイルを生成
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DB_NAME;" > init.sql
echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> init.sql
echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;" >> init.sql
echo "FLUSH PRIVILEGES;" >> init.sql
