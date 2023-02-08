#!/usr/bin/fish
function timer
	sleep $(echo $(date -d"$1" +%s) - $(date +%s) | bc)
	aplay ~/sounds/notification.wav 2>/dev/null
	notify-send "Timer $1" "$2"
end
