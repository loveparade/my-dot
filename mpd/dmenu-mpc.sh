###

 # @Author: liuliang
 # @Date: 2019-12-27 02:35:14
 # @LastEditTime : 2019-12-27 02:39:07
 ###

#!/bin/bash

if [ -z "$@" ]
then
    mpc playlist | awk '{print FNR" "$0}'
else
    song=`echo $@ | awk '{print $1}'`
    mpc paly $song > /dev/null
    exit 0
fi