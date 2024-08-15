FROM debian:latest

# MariaDB をインストール
RUN apt-get update && \
    apt-get install -y mariadb-server

# 設定ファイルのコピー
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/init.sql /etc/mysql/init.sql

# 必要なディレクトリの作成
RUN mkdir /run/mysqld

# MariaDB を起動
CMD ["mysqld_safe"]
