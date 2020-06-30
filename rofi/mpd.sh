#!/bin/bash

if [ -z "$@" ]
then
	mpc playlist | awk '{print FNR" "$0}'
else
	song=`echo $@ | awk '{print $1}'`
	mpc play $song > /dev/null
	exit 0
fi
