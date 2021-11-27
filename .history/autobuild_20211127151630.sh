#!/bin/bash

set -e

rm -rf `pwd`/build/*
cd `pwd`/build && cmake .. && make
cd ..
cp -r `pwd`/src/include `pwd`/lib

# 把头文件拷贝到 /usr/include/mymuduo  so库拷贝到 /usr/lib    PATH
if [ ! -d /usr/include/pearl_house ]; then 
    mkdir /usr/include/pearl_house
fi

cd `pwd`/src/include

# copy head file into sysytem head file diretion.
for header in `ls *.hpp`
do
    cp $header /usr/include/pearl_house
done

cd ..
cd ..
cp `pwd`/lib/libpearl_house.a /usr/lib

ldconfig