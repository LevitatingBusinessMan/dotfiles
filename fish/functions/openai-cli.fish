function openai-cli --description 'alias openai-cli=OPENAI_API_KEY=(cat ~/chatgptkey) openai-cli'
  OPENAI_API_KEY=(cat ~/chatgptkey) EXTERNAL_DIFF=difft /usr/bin/openai-cli $argv
        
end
