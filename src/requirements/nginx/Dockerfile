#FROM debian:latest
#RUN apt update && apt update && apt install -y nginx
#COPY ./conf/default /etc/nginx/sites-available/
#CMD ["nginx", "-g", "daemon off;"]
FROM debian:latest

# 必要なパッケージのインストール
RUN apt update && apt install -y nginx openssl

# 証明書と秘密鍵を生成
RUN openssl genpkey -algorithm RSA -out /etc/ssl/private/selfsigned.key && \
    openssl req -new -key /etc/ssl/private/selfsigned.key -out /etc/ssl/private/selfsigned.csr -subj "/C=US/ST=State/L=City/O=Company/OU=Department/CN=localhost" && \
    openssl x509 -req -days 365 -in /etc/ssl/private/selfsigned.csr -signkey /etc/ssl/private/selfsigned.key -out /etc/ssl/certs/selfsigned.crt

# Nginxの設定ファイルをコピー
COPY ./conf/default /etc/nginx/sites-available/default

# Nginxをデフォルトで起動
CMD ["nginx", "-g", "daemon off;"]

