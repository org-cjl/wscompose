#!/bin/bash
target=$1
if [ ! -d .envs ];then
mkdir .envs
fi
case ${target} in
demo1)
cp -r initEnvs/common.env ./.envs/common.env
#cp -r initEnvs/develop.ini ./.local.ini
cp -r initEnvs/$target.ini ./.local.ini
cp -r initEnvs/$target.env ./.envs/application.env
;;
sandbox1)
cp -r initEnvs/common.env ./.envs/common.env
cp -r initEnvs/develop.ini ./.local.ini
cp -r initEnvs/$target.env ./.envs/application.env
;;
sandbox2)
cp -r initEnvs/common.env ./.envs/common.env
cp -r initEnvs/develop.ini ./.local.ini
cp -r initEnvs/$target.env ./.envs/application.env
;;
sandbox3)
cp -r initEnvs/common.env ./.envs/common.env
cp -r initEnvs/develop.ini ./.local.ini
cp -r initEnvs/$target.env ./.envs/application.env
;;
sandbox4)
cp -r initEnvs/common.env ./.envs/common.env
cp -r initEnvs/develop.ini ./.local.ini
cp -r initEnvs/$target.env ./.envs/application.env
;;
sandbox5)
cp -r initEnvs/common.env ./.envs/common.env
cp -r initEnvs/develop.ini ./.local.ini
cp -r initEnvs/$target.env ./.envs/application.env
;;
sandbox6)
cp -r initEnvs/common.env ./.envs/common.env
cp -r initEnvs/develop.ini ./.local.ini
cp -r initEnvs/$target.env ./.envs/application.env
;;
* ) 
echo "Input Error!" 
;;
esac