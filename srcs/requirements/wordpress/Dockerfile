FROM debian:bullseye
RUN apt-get update 
RUN apt-get install -y \
        php7.4-fpm \
        php7.4-mysqli \
        curl
RUN mkdir "/run/php/"
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/
COPY ./conf/script.sh /script.sh
RUN mkdir /run/mysqld && chmod +x /script.sh
CMD ["/script.sh"]
