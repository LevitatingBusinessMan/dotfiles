#!/usr/bin/bash
mkdir -p $HOME/autobuild

if [ "$1" == "linux" ]
then
	notify-send "Builder" "Building linux aur package"
	pushd $HOME/autobuild
	git clone https://aur.archlinux.org/linux-git.git linux
	pushd linux
	makepkg -s --noconfirm
	notify-send "Builder" "Linux package built"
fi