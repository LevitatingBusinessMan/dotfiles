function openai-cli --description 'alias openai-cli=OPENAI_API_KEY=(cat ~/chatgptkey) openai-cli'
  OPENAI_API_KEY=(cat ~/chatgptkey) /usr/bin/openai-cli $argv
        
end
