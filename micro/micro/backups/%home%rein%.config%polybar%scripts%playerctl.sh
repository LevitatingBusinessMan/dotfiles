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
	*)
		# Only display if there is an active player
		
		exit 0
esac

echo "$statusSymbol  $display"
