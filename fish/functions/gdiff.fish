function gdiff --wraps='GIT_EXTERNAL_DIFF=difft git diff' --description 'alias gdiff=GIT_EXTERNAL_DIFF=difft git diff'
  GIT_EXTERNAL_DIFF=difft git diff $argv
        
end
