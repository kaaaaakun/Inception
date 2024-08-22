#!/bin/bash
set -e

DATA_DIR="/var/lib/mysql"

# もしデータディレクトリが空であれば
if [ -z "$(ls -A $DATA_DIR)" ]; then
    echo "Initializing database with init_file..."
    mysqld --init-file=/init.sql
else
    echo "Database already initialized. Starting MariaDB..."
    exec mysqld
fi
