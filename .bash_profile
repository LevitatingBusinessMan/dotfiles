#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

 #Gaomon tablet
 xsetwacom set "GAOMON Gaomon Tablet Pad pad" button 1 key Ctrl Z
 xsetwacom set "GAOMON Gaomon Tablet Pad pad" button 2 key x
 xsetwacom set "GAOMON Gaomon Tablet Pad pad" button 3 key n
 xsetwacom set "GAOMON Gaomon Tablet Pad pad" button 4 key Shift b

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
