#!/bin/bash

artist=$(playerctl metadata --format "{{ artist }}")
title=$(playerctl metadata --format "{{ title }}")
status=$(playerctl status)
#statusSymbol=$(playerctl status --format "{{ emoji(status) }}" 2> /dev/null)

#Check if title includes an artist alreadt
if [[ $title =~ " - " ]]
then
	display="$title"
else
	display="$artist - $title"
fi

#These are FontAwesome glyphs!
case $status in
	"Playing")
		statusSymbol=""
		;;
	"Paused")
		statusSymbol=""
		;;
esac

#Only display anything if the player ins't stopped
if [[ $status != "Stopped" ]]
then
	echo "$statusSymbol  $display"
else echo
fi
