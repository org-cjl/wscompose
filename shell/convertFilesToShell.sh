#!/bin/bash

if [ x$COMPOSE_WORKSPACE = x ]; then
 echo "COMPOSE_WORKSPACE 没有设置"
 exit 1
 else
 cd $COMPOSE_WORKSPACE
fi

find $COMPOSE_WORKSPACE -name "*.sh" > allShellFiles.log

for line in `cat allShellFiles.log`
do
  dos2unix $line
done

echo "Done !"

