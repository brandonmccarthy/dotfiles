#!/bin/bash

pgrep -x redshift &> /dev/null
if [[ $? -eq 0 ]]; then
	temp=$(redshift -p 2>/dev/null | grep temp | cut -d' ' -f3)
	temp=${temp//K/}
fi

if [[ -z $temp ]]; then
	echo ""				# Hide if not running
elif [[ $temp -ge 5000 ]]; then
	echo "%{F#8FA1B3}${temp}K"	# Blue
elif [[ $temp -ge 4000 ]]; then
	echo "%{F#EBCB8B}${temp}K"	# Yellow
else
	echo "%{F#D08770}${temp}K"	# Blue
fi	
