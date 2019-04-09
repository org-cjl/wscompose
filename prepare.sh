#$!/bin/bash
# usage:
#  sh prepare.sh [develop|production|test]
# 确保指令能正确执行的初始化脚本
help() {
  echo "usage:"
  echo "sh prepare.sh [develop|production|test]"
  exit
}

if [ $# -ne 1 ]; then
  help
else if [ $# -eq 1 -a $1 != "production" -a $1 != "develop" -a $1 != 'test' ]; then
  help
fi
fi

target=$1
if [ ! -d .envs ];then
mkdir .envs
fi
cp initEnvs/$target.ini ./.local.ini
echo "prepare $target ini done"
#if [ $# -eq 1 -a $1 != "production" ]; then
# cp initEnvs/common.env ./.envs/common.env
# cp initEnvs/$target.env ./.envs/application.env
#fi
#if [ $# -eq 1 -a $1 == "production" ]; then
# cp initEnvs/common-$target.env ./.envs/common.env
#fi
#echo "prepare $target envs done"

