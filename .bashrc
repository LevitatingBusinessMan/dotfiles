#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PS1='\033[01;32m\u \033[34m\w\033[5m\033[91m ❤ \033[25m\033[39m'

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

export EDITOR="micro"

#fff customization
export FFF_OPENER="less"
export FFF_FAV1="${HOME}"
export FFF_FAV2="${HOME}/playground"
export FFF_FAV3="${HOME}/.bashrc"
export FFF_FAV4="${HOME}/.bash_aliases"
export FFF_FAV5="${HOME}/projects"
export FFF_COL2=6
