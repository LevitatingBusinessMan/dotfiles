#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PS1='\033[01;32m\u \033[34m\w \033[39m'

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

export EDITOR="micro"

#fff customization
export FFF_OPENER="less"
export FFF_FAV1="${HOME}"
export FFF_FAV2="${HOME}/.bashrc"
export FFF_FAV3="${HOME}/.bash_aliases"
export FFF_FAV4="${HOME}/projects"
export FFF_FAV5="/tmp"
export FFF_COL2=6

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
