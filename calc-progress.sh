#!/bin/sh

SECONDS=30

if [ ! -f /tmp/wps-count ] ; then
    echo 0 > /tmp/wps-count
fi

n=`cat /tmp/wps-count`
# echo "请在 $n 秒内按下设备上的wps键，如果已经连接成功，可以选择退出"
let "p = n * 100 / 30"
echo $p

r=`expr $n + 1`
echo $r > /tmp/wps-count

# if [ $r -ge $SECONDS ] ; then
#     rm /tmp/wps-count
# fi
