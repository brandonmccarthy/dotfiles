#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Find screens and add the bar
if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do 
		MONITOR=$m polybar --reload example &
	done
else 
	polybar --reload example &
fi
