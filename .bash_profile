#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin

if [[ ! $DISPLAY && XDG_VTNR -eq 1 ]]; then
	exec startx
fi
