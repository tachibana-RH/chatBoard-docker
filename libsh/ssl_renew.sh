#!/bin/sh

# 証明書の更新
#/usr/bin/certbot-auto renew

#Dockerのvolumeマウント先
cp /etc/letsencrypt/live/chatsboard.com/cert.pem ../node/mount/certs/
cp /etc/letsencrypt/live/chatsboard.com/chain.pem ../node/mount/certs/
cp /etc/letsencrypt/live/chatsboard.com/fullchain.pem ../node/mount/certs/
cp /etc/letsencrypt/live/chatsboard.com/privkey.pem ../node/mount/certs/

# Apacheのリロード
systemctl restart httpd

