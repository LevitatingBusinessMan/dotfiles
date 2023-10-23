function my_ip --wraps='curl zx2c4.com/ip' --wraps='curl api.ipify.org' --description 'alias my_ip=curl api.ipify.org'
  curl api.ipify.org $argv
        
end
