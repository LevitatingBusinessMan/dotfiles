#!/bin/bash

#Shamelessly stolen from stackoverflow
SINK=$( pactl list short sinks | grep RUNNING | sed -e 's,^\([0-9][0-9]*\)[^0-9].*,\1,' | head -n 1 )
VOLUME=$( pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )

ACTION=$(dunstify "Volume: ${VOLUME}" -h string:x-dunst-stack-tag:volume -t "1000" \
	-A "open,Open Pavucontrol")

if [ $ACTION == "open" ]; then

	exec pavucontrol	

fi
