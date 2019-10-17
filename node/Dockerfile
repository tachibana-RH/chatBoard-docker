FROM node:10

USER root

# 環境変数を設定
ENV NODE_CHATBOARD_DB_HOST=mysql
ENV NODE_CHATBOARD_DB_USER=xxxxxxxx
ENV NODE_CHATBOARD_DB_PASSWORD=xxxxxx
ENV NODE_CHATBOARD_DB_NAME=xxxxxxx
ENV NODE_NAME=xxxxxxx

ENV NODE_KEY=/etc/xxx/certs/xxxxxx
ENV NODE_CERT=/etc/xxx/certs/xxxxxx
ENV NODE_CHAIN=/etc/xxx/certs/xxxxxx
ENV NODE_FULLCHAIN=/etc/xxx/certs/xxxxxxx

# SSL証明書のディレクトリを作成する
RUN mkdir /etc/pki && mkdir /etc/pki/certs

# アプリケーションディレクトリを作成する
WORKDIR /usr/node/src

EXPOSE 3000

CMD npm install --production && npm start

