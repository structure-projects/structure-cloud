#!/usr/bin/env bash
#在本地仓库安装.RELEASE
version=1.0.1
cd ../
cd structure-cloud-dependencies
mvn clean install -Dmaven.test.skip=true -Drevision=$version
