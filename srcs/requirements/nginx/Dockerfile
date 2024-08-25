FROM debian:bullseye

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y nginx 

# Nginxの設定ファイルをコピー
COPY ./conf/default /etc/nginx/sites-available/default
COPY ./ssl/* /etc/ssl/

# Nginxをデフォルトで起動
CMD ["nginx", "-g", "daemon off;"]

