#!/bin/sh

COUNT_FILE=/tmp/wps-count
PERCENT_FILE/tmp/wps-percent

if [ ! -f $COUNT_FILE ] ; then
    echo 0 > $COUNT_FILE
fi

n=`cat $COUNT_FILE`
n=`expr $n + 1`
echo $n > $COUNT_FILE

let "p = n * 100 / 30"
if [ $p -ge 100 ] ; then
    p=100
fi
echo $p | tee $PERCENT_FILE


