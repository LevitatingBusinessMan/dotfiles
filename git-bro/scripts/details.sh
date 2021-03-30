#!/bin/sh
cd $HOME/.local/share/git-bro/repos/$1
DETAILS=$(git show -s --format="%an %s (%h)")
#notify-send $1 "$DETAILS"

HASH=$(git rev-parse HEAD)
REMOTE=$(git config --get remote.origin.url)
AUTHOR=$(echo $REMOTE | sed -E 's/.*github.com[/:]([[:alnum:]-]+)\/([[:alnum:]-]+)(\.git)?/\1/')
if [[ $REMOTE == *"github"* ]]; then
	{
		ACTION=$(dunstify --action="open,Open on github" "$1" "$DETAILS")
		if [[ $ACTION == "open" ]]; then
			xdg-open "https://github.com/${AUTHOR}/${1}/commit/${HASH}"
		fi
	} &
else
	dunstify "$1" "$DETAILS"
fi

#The regex:
#(\w+)\/(\w+)(?:\.git)?$
#sed -E 's/.*github.com[/:]([[:alnum:]-]+)\/([[:alnum:]-]+)(\.git)?/\1:\2/'
#perl -pe 's/.*github.com[:\/]([\w-]+)\/([\w-]+)(?:\.git)?$/\1:\2/s')
