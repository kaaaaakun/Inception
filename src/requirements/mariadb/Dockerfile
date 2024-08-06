FROM debian:latest
RUN apt update && apt update 
RUN apt install -y mariadb-server
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/init.sql /etc/mysql/init.sql
# 50-server.cnfはmysqlの設定ファイル

RUN mkdir /run/mysqld
# mysqld_safeがpidファイルを生成するディレクトリを作成

CMD ["mysqld_safe"]
# mysqld_safeはmysqldを起動するためのスクリプト