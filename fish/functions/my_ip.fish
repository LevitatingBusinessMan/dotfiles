function my_ip --wraps='curl https://www.zx2c4.com/ip' --description 'alias my_ip=curl https://www.zx2c4.com/ip'
  curl https://www.zx2c4.com/ip $argv
        
end
