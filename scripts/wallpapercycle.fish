#!/usr/bin/fish
set file (ls -dt ~/wallpapercycle/* | tail -n1)
touch $file
echo $file
if string match -q "*-tile*" $file
    feh --bg-tile $file
else
    feh --bg-fill $file
end
