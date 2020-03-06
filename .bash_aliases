#
# ~/.bash_aliases
#

alias grep='grep --color=auto -i'
alias ls='ls --color=auto'
alias diff='diff --color=auto'

alias ll='ls -alFh'

#from ubuntu
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#list all commands
alias list='bIFS=$IFS; IFS=":"; read -a path_array <<< $PATH; IFS=$bIFS; path_array_=("${path_array[@]}"); for i in "${path_array_[@]}"; do ls $i; done | uniq | sort'

alias rc="${EDITOR} ${HOME}/.bashrc"

alias wttr='curl v2.wttr.in'

alias solve='node ~/projects/solver'

alias endsession='pkill -SIGHUP -t'

#qwebservers
alias iwash='node ~/projects/qwebservers/iwash.js'
alias express='node ~/projects/qwebservers/express.js'

alias msf="msfconsole"

alias gotop="gotop -b"

alias py="python"

alias calc="${HOME}/calc.bc"

alias irssi="irssi -n levitating"

alias sprunge="curl -F 'sprunge=<-' sprunge.us"
alias xi="curl -F 'f:1=<-' ix.io"

alias view="micro -readonly on"

alias copy="xclip -selection clipboard"

alias light="sudo light"
