function catbin --wraps='nc catbin.xyz 5454 <' --description 'alias catbin=nc catbin.xyz 5454 <'
  nc catbin.xyz 5454 < $argv
        
end
