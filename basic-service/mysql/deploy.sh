#!/usr/bin/env bash

# 创建目录
mkdir -p $PWD/config && mkdir -p $PWD/data && mkdir -p $PWD/logs && mkdir -p $PWD/init.d

# 拉取初始数据库文件
wget https://mirror.ghproxy.com/https://raw.githubusercontent.com/structure-projects/structure-cloud/1.0.1.RELEASE/basic-service/docker-compose/mysql/init.d/init.sql -O ./init.d/init.sql
# 拉取编排文件
wget https://mirror.ghproxy.com/https://raw.githubusercontent.com/structure-projects/structure-cloud/1.0.1.RELEASE/basic-service/docker-compose/mysql/docker-compose.yml -O ./docker-compose.yml
# 执行部署命令
docker-compose up -d

