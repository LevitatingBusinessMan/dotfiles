alias bc="bc -l"
alias ll='ls -alFh'
alias lt='ls -t'
alias lr='ls -LR'

alias copy="xclip -selection clipboard"
alias mpc="mpc --host 192.168.1.103"

alias irssi="irssi -n levitating"

alias gef='gdb -ex "source /bedrock/strata/arch/usr/share/gef/gef.py"'

alias bat="bat -n --paging=never --style=plain --color=always"

alias tree="exa --tree"

alias yeelight-cli="strat arch yeelight-cli"

alias wifi_passwords="sudo grep -r '^psk=' /etc/NetworkManager/system-connections/"

alias echomic="pactl load-module module-loopback"
alias unechomic="pactl unload-module module-loopback"

alias light="sudo /bedrock/cross/bin/light"

alias view="micro -readonly on"

#alias gdiff="GIT_EXTERNAL_DIFF=difft git log -p --ext-diff"

alias ghc-pristine="/usr/share/ghc-pristine/bin/ghc"

alias srcinfo="makepkg --printsrcinfo > .SRCINFO"

alias wpscan="wpscan --api-token `cat ~/wpscanapi.token`"

alias jupyter="jupyter --app-dir=~/jupyter"

alias irc="mosh irc@192.168.1.104"

alias scan="nmcli d wifi rescan"

alias e="exit"

alias rapper_names="ls /usr/lib | grep lib | sed s/lib/lil/"

alias my_ip="curl https://api.ipify.org"

alias d_dirsearch='dirsearch -e php,txt,html -t 30 -w "$HOME/wordlists/common.txt" -t 30 -e php,txt,html'

#alias yay='yay --mflags="--nocheck"'
