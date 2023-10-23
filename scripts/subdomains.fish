#!/usr/bin/env fish
argparse n/nameserver= d/domain= w/wordlist= o/output= -- $argv
or exit

if test -z $_flag_n; or test -z $_flag_d; or test -z $_flag_w
    echo "Required arguments: nameserver, domain, wordlist"
    echo "You can find the nameserver with nslookup and querytype=soa"
    exit
end

if not test -f $_flag_w
    echo "File $_flag_w not found"
    exit
end

for word in (cat $_flag_w)
    if nslookup "$word.$_flag_d" $_flag_n >/dev/null
        echo "$word.$_flag_d"
        if test -n $_flag_o
            echo "$word.$_flag_d" >> $_flag_o
        end
    end
end
