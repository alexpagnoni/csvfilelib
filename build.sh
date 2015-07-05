#!/bin/bash

WHERE=`pwd`

if [ -a .encoded ]; then
  TGZ_NAME="csvfilelib-enc-1.0.0.tgz"
  DIR_NAME="csvfilelib-enc"
else
  TGZ_NAME="csvfilelib-1.0.0.tgz"
  DIR_NAME="csvfilelib"
fi

cd ..
tar -cvz --exclude=OLD --exclude=*~ --exclude=CVS --exclude=.?* --exclude=np --exclude=.cvsignore -f $TGZ_NAME $DIR_NAME
cd $WHERE
