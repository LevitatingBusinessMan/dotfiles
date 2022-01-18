#
# ~/.bash_aliases
#

alias grep='grep --color=auto'
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

alias d_dirsearch='dirsearch -e php,txt,html -t 30 -w "$HOME/wordlists/common.txt" -t 30 -e php,txt,html'

alias nmap="sudo nmap"

alias reptile-client="sudo ~/Reptile/output/client"

alias less="less -r"

alias bc="bc -l"

alias clip="xclip -selection clipboard -i"

alias bat="bat -n --paging=never --style=plain --color=always"

alias mitmproxy="mitmproxy --listen-port 9090"

alias mitm="proxychains -q -f /etc/proxychains_mitm.conf"

function serve { while [ "$REPLY" != "q" ]; do echo -e "HTTP/1.1 200 OK\r\n\r\n$1\r\n" | nc -vlnp $2 -q1; read -n1; done; unset REPLY; }

alias jesse="curl -s https://jesse.frij.link/ | bash"

function rcpy {
	prompt=$(echo rein $(pwd | sed 's/\/home\/rein/~/') $ $*)
	output=$(bash -c "$*")
	echo $output
	echo -e "$prompt \n$output" | clip
}

alias mpc="mpc --host 192.168.1.103"
