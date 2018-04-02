#!/bin/bash

applications=( i3 dunst betterlockscreen termite vim polybar google-chrome-stable amixer firefox-developer-edition tmux ranger git nitrogen zsh i3lock rofi alsamixer htop xrandr nitrogen clipit xautolock redshift compton weechat nm-applet xfce4-power-manager scrot )
for i in "${applications[@]}"; do
	if [[ ! -x $(which "$i" 2>/dev/null) ]]; then
		echo -e "[\e[31mERROR\e[39m] $i is not in path or executable"
	else
		echo -e "[\e[32mFOUND\e[39m] $i is in path and executable"
	fi
done
