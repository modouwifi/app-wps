#!/bin/sh

LOOPCMD=$(dirname $0)/loop.sh

/system/sbin/wps.sh 

textview WPS连接 "" 1000 31 "$LOOPCMD %LOOP-COUNT% >/tmp/out" /tmp/out