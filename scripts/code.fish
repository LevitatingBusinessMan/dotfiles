#!/usr/bin/fish
ls ~/projects | dmenu | xargs -Ix code ~/projects/x
