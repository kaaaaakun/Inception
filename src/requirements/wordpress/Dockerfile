FROM debian:latest
RUN apt update && apt update 
RUN apt install -y \
        php8.2-fpm \
        php8.2-mysqli \
        curl
COPY ./conf/www.conf /etc/php/8.2/fpm/pool.d/
COPY ./conf/script.sh /script.sh
RUN mkdir /run/mysqld && chmod +x /script.sh
CMD ["/script.sh"]