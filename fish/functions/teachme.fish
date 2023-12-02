function teachme --wraps='cowsay -f $(ls /usr/share/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin) 2>/dev/null | shuf -n 1)' --description 'alias teachme cowsay -f $(ls /usr/share/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin) 2>/dev/null | shuf -n 1)'
  cowsay -f $(ls /usr/share/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin) 2>/dev/null | shuf -n 1) $argv
        
end
