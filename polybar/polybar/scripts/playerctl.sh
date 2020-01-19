#!/bin/bash

artist=$(playerctl metadata --format "{{ artist }}" 2> /dev/null)
title=$(playerctl metadata --format "{{ title }}" 2> /dev/null)
status=$(playerctl status 2> /dev/null)
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
		echo
		exit 0
esac

echo "$statusSymbol  $display"
