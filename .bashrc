#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}

PS1="\[\033[1;31m\]\$(git_branch)\[\033[36m\]\u \[\033[34m\]\w \[\033[32m\]\$\[\033[0m\] "


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

#For dfcp
export DOT_FILES="$HOME/.bash_profile:$HOME/.bashrc:$HOME/.bash_aliases:$HOME/.xinitrc:$HOME/.config/i3:$HOME/.config/compton.conf:$HOME/.config/polybar:$HOME/.config/rofi:$HOME/.local/share/konsole:$HOME/.config/micro:$HOME/.config/dunst"

STEAMCOMMON="${HOME}/Games/SteamLibrary/steamapps/common"
