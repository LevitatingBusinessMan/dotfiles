#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc



if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

lovecraft | cowsay -f tux
