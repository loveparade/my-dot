#!/bin/bash

if [ -z "$@" ]
then
	echo 'lock'
    echo 'logout'
    echo 'switch_user'
    echo 'suspend'
    echo 'hibernate'
    echo 'reboot'
    echo 'shutdown'
else
    i3exit $@
    exit 0
fi
