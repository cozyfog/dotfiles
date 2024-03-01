#!/bin/sh

pipewire &
slstatus &
xcompmgr &
udiskie &

# xrandr --output HDMI1 --mode 1920x1080 --left-of eDP1 &
sh ${XDG_CONFIG_HOME}wallpapers/random.sh &
setxkbmap de &

exec dwm
