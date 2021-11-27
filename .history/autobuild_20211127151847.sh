#!/bin/bash

set -e

rm -rf `pwd`/build/*
cd `pwd`/build && cmake .. && make
cd ..
cp -r `pwd`/src/include `pwd`/lib

# dectect head file path is exit.
if [ ! -d /usr/include/pearl_house ]; then 
    mkdir /usr/include/pearl_house
fi

cd `pwd`/src/include

# copy head file into sysytem head file direction.
for header in `ls *.hpp`
do
    cp $header /usr/include/pearl_house
done

cd ..
cd ..
cp `pwd`/lib/libpearl_house.a /usr/lib


# reload configure to  fresh system
ldconfig