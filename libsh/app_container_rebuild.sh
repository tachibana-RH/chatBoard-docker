#!/bin/sh

cd /home/username/chatboard 

#コンテナが立ち上がっていた場合は落とす
if test $(docker ps | wc -l) = 1; then
    echo "container down false"
else
    echo "container down true"
    docker-compose down
fi

#イメージでタグがlatestのappを削除する
#存在しない場合でも処理上で問題なし
docker rmi $(docker images | grep chatboard_app | grep latest | awk '{print $3}')

#修正後のソースでビルド・立ち上げを行う
docker-compose build
docker-compose up -d

#起動後のログを確認する
echo $(docker ps -a | grep chatboard_app | awk '{print $1}')

