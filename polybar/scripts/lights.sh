#!/bin/bash

OUTPUT=$(yeelight-cli get_prop power | head -n1)

case ${OUTPUT::-1} in
	"{\"id\":0,\"result\":[\"on\"]}")
		echo "%{T3}" ;;
	"{\"id\":0,\"result\":[\"off\"]}")
		echo "%{T2}" ;;
	*)
		echo "%{T2}";;
esac
