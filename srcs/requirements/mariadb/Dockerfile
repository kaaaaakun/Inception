FROM debian:bullseye

RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/init.sh /
COPY ./conf/entrypoint.sh /
RUN chmod +x /init.sh
RUN chmod +x /entrypoint.sh

RUN mkdir -p /run/mysqld && chown mysql:mysql /run/mysqld
RUN mkdir -p /var/log/mysql && chown mysql:mysql /var/log/mysql

CMD ["/bin/bash", "-c", "/init.sh && /entrypoint.sh && mysqld_safe"]

