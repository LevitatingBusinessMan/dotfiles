function chatgpt --wraps='API_KEY=(cat ~/chatgptkey) /usr/bin/chatgpt' --description 'alias chatgpt=API_KEY=(cat ~/chatgptkey) /usr/bin/chatgpt'
  API_KEY=(cat ~/chatgptkey) /usr/bin/chatgpt $argv
        
end
