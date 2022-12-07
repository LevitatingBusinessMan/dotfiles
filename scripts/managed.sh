#!/bin/bash
set -e
ip link set $1 down
read -e -p "Revert mac? (y/N)" choice
[[ "$choice" == [Yy]* ]] && macchanger -p $1
iw dev $1 set type managed
ip link set $1 up
read -e -p "Manage by NetworkManager? (y/N)" choice
[[ "$choice" == [Yy]* ]] && nmcli d set $1 managed yes
