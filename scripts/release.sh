#!/bin/bash
#发行新的版本上传到中心仓库可以执行这个脚本
version=1.0.1.RELEASE
cd ../
cd structure-cloud-dependencies
mvn clean deploy -P release,oss -Dmaven.test.skip=true -Drevision=$version
