function "timer" --description "Set a timer"
  if test "$argv[1]" = "-h"; or test "$argv[1]" = "--help"; or test "$argv[1]" = ""
    echo "Usage: timer 'x seconds' 'name'"
    return
  end
	sleep (echo (date -d"$argv[1]" +%s) - (date +%s) | bc)
	aplay ~/sounds/notification.wav 2>/dev/null
	notify-send "Timer $argv[1]" "$argv[2]"
end
