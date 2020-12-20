#!/bin/bash

OUTPUT=$(node projects/yeelight-cli/index.js get_prop power)

case $OUTPUT in
	"{ id: 0, result: [ 'on' ] }")
		echo "%{T3}" ;;
	"{ id: 0, result: [ 'off' ] }")
		echo "%{T2}" ;;
	*)
		echo "%{T2}"
		;;
esac
