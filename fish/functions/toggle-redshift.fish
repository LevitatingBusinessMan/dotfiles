function toggle-redshift --wraps='pkill -USR1 redshift' --description 'alias toggle-redshift=pkill -USR1 redshift'
  pkill -USR1 redshift $argv
        
end
