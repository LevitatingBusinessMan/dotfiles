#!/bin/bash
nmcli d set "$1" managed no
set -e
airmon-ng check
ip link set $1 down
macchanger -r $1
iw dev $1 set type monitor
ip link set $1 up
