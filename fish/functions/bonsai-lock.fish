function bonsai-lock --wraps=x --description 'alias bonsai-lock x'
     cool-retro-term --fullscreen -e /bin/sh -c 'cbonsai -p; sleep 1; exit' & sleep 0.4; string split -f6 ' ' (flameshot full -p /tmp 2>&1) | xargs i3lock -i   
end
