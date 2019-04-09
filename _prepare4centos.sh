#$!/bin/bash
# usage:
#  sh _prepare4centos.sh nodeName [develop|production|test]
# 其中, nodeName为机器名
# 确保指令能正确执行的初始化脚本, 执行一次即可

echo "export COMPOSE_WORKSPACE=/data/workspace" >> ~/.bash_profile
echo "export nodeName=$1" >> ~/.bash_profile

source ~/.bash_profile

# 仅针对centos
ip=$(ifconfig eth0|grep "inet "|awk '{print $2}')
echo "hostIp:$ip"
echo host_ip=$ip > .local-$nodeName.ini

sh prepare.sh $2

