#!/bin/sh

#
# 系统部署脚本
# @author 方道坤 
# @date 2018年05月04日18:00:00
# @description Copyright (c) 2015, today36524.com All Rights Reserved.
#

source /home/today/.bash_profile
cd /home/today/tscompose
echo $1
echo $2
docker ps|grep $2
git checkout .
git checkout master
git pull
git checkout $1
if [ "$?" != "0" ];then
         echo "##################################################################### checkout failed #####################################################################"
          exit 2
else
    echo "##################################################################### checkout succedd #####################################################################"
fi
./scompose pull $2
if [ "$?" != "0" ];then
         echo "##################################################################### pull failed #####################################################################"
          exit 2
else
    echo "##################################################################### pull succedd #####################################################################"
fi
./scompose up -d $2
if [ "$?" != "0" ];then
         echo "##################################################################### scompose up failed #####################################################################"
          exit 2
else
    echo "##################################################################### scompose up succedd #####################################################################"
fi
