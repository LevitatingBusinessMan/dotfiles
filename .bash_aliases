#
# ~/.bash_aliases
#

alias grep='grep --color=auto -i'
alias ls='ls --color=auto'
alias diff='diff --color=auto'

alias ll='ls -alFh'
alias lt='ls -t'
alias lr='ls -LR'

#list all commands
alias list='bIFS=$IFS; IFS=":"; read -a path_array <<< $PATH; IFS=$bIFS; path_array_=("${path_array[@]}"); for i in "${path_array_[@]}"; do ls $i; done | uniq | sort'

alias dfcp="${HOME}/projects/dotfilescp/dfcp"

alias rc="${EDITOR} ${HOME}/.bashrc"

alias wttr='curl v2.wttr.in'

alias endsession='pkill -SIGHUP -t'

#mongodb-compass
alias compass="mongodb-compass"

alias py="python"

alias copy="xclip -selection clipboard"

alias msf="msfconsole"

alias osu_area="xsetwacom set \"GAOMON Gaomon Tablet Pen stylus\" area 0 0 10000 10170"
alias osu_area_undo="xsetwacom set \"GAOMON Gaomon Tablet Pen stylus\" area 0 0 33020 20320"

alias sprunge="curl -F 'sprunge=<-' sprunge.us"
alias ix="curl -F 'f:1=<-' ix.io"

alias view="micro -readonly on"

alias lights="node projects/yeelight-cli/index.js"

alias pac_who="pacman -Qo"
alias pac_list="pacman -Ql"

alias rb="ruby"

alias tunnel="sudo killall openvpn; sudo -b openvpn ~/Levitating.ovpn &> /dev/null"

alias du="du -h"

alias upscale="waifu2x -model_dir /usr/share/waifu2x/models/photo -m scale -i"

alias catbin="nc catbin.xyz 5454 <"

alias srcinfo="makepkg --printsrcinfo > .SRCINFO"

alias yay="yay --removemake"

alias make="make -j3"

alias my_ip="curl https://api.ipify.org"

alias proxy_tor="proxychains -q -f /etc/proxychains_tor.conf"

alias tsv-view="(column -t -s $'\t' | less -S) <"

alias jl="julia"

alias d_dirsearch='dirsearch -e php,txt,html -t 30 -F --plain-text-report=dirsearch -w "$HOME/wordlists/common.txt" -t 30 -e php,txt,html'

alias nmap="sudo nmap"

alias reptile-client="sudo ~/Reptile/output/client"
