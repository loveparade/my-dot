#!/bin/bash
case $1 in
	up)
		pactl info | grep -e 'Default Sink' | cut -f2 -d":" | xargs -i pactl set-sink-volume {} +5%
		;;
	down)
		pactl info | grep -e 'Default Sink' | cut -f2 -d":" | xargs -i pactl set-sink-volume {} -5%
		;;
	mute)
		pactl info | grep -e 'Default Sink' | cut -f2 -d":" | xargs -i pactl set-sink-mute {} toggle
		;;
esac

