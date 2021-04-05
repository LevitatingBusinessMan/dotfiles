#!/bin/bash

#Shamelessly stolen from stackoverflow
VOLUME=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

dunstify "Volume: ${VOLUME}" -r 1337 -t "1000"
