#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc



if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	#Gaomon tablet
	xsetwacom set "GAOMON Gaomon Tablet Pad pad" button 1 key Ctrl Z
	xsetwacom set "GAOMON Gaomon Tablet Pad pad" button 2 key x
	xsetwacom set "GAOMON Gaomon Tablet Pad pad" button 3 key n
	xsetwacom set "GAOMON Gaomon Tablet Pad pad" button 4 key Shift b
	exec startx
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

cowthink $(fortune)
