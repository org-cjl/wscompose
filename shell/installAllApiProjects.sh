#!/bin/bash

if [ x$COMPOSE_WORKSPACE = x ]; then
 echo "COMPOSE_WORKSPACE 没有设置"
 exit 1
fi

find $COMPOSE_WORKSPACE -name "*-api" -maxdepth 1 > allApiProjects.log

originPosition=`pwd`

for line in `cat allApiProjects.log`
do
  cd $originPosition
  cd $line
  mvn clean install
done

cd $COMPOSE_WORKSPACE/kuaisuadmin-oauth-resourse/
mvn clean install -Dmaven.test.skip

cd $COMPOSE_WORKSPACE/isuwang-maven-plugin/
mvn clean install -Dmaven.test.skip

cd $COMPOSE_WORKSPACE/isuwang-service-study/
mvn clean install -Dmaven.test.skip

echo "Done !"