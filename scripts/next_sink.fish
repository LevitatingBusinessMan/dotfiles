#!/usr/bin/fish

set sinks (pactl list sinks | grep "Name:" | awk '{print $2}')
set current_sink (pactl info | grep "Default Sink" | awk '{print $3}')

set found false

set -a sinks $sinks

for sink in $sinks
    if [ "$sink" = "$current_sink" ]
        set found true
        continue
    end
    if $found
        echo $sink
        pactl set-default-sink $sink
        break
    end
end
