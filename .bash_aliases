#
# ~/.bash_aliases
#

alias grep='grep --color=auto'
alias ls='ls --color=auto'

alias ll='ls -alFh'

#from ubuntu
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#list all commands
alias list='bIFS=$IFS; IFS=":"; read -a path_array <<< $PATH; IFS=$bIFS; path_array_=("${path_array[@]}"); for i in "${path_array_[@]}"; do ls $i; done | uniq | sort'

alias dfcp="${HOME}/projects/dotfilescp/dfcp"

alias rc="${EDITOR} ${HOME}/.bashrc"

alias wttr='curl v2.wttr.in'

alias endsession='pkill -SIGHUP -t'
