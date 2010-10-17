#!/bin/sh

#REVISION=`head -c 4 todo.txt`
REVISION=`head -n 1 changelog.txt | sed 's/[^0-9a-zA-Z-]//g'`

rm -rf dist/linux
ant clean
ant -Dreplicatorg.version=$REVISION dist-linux
#ant -Dreplicatorg.version=$REVISION dist-linux64
