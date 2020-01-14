#!/bin/sh

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#Start udiskie
udiskie &

#i3
exec /usr/bin/i3

#KDE
#exec startkde

#GNOME
#export GDK_BACKEND=x11
#export XDG_SESSION_TYPE=x11
#exec gnome-shell
