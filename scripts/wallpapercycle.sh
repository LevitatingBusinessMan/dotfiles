#!/bin/sh
file=`ls -dt ~/wallpapercycle/* | tail -n1`
touch $file
echo $file
feh --bg-tile $file
