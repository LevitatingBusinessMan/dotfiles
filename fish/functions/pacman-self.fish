function pacman-self --description "get all non-base orphan pacman packages"
  comm -23 (pacman -Qqett | sort | psub) (cat (pacman -Qqg base-devel | psub) (_pacman-base | psub) | sort | uniq | psub)
end

function _pacman-base
    pacman -Qi base | grep 'Depends On' | sed -E 's/Depends On\s+: //' | sed 's/  /\n/g' -
end
