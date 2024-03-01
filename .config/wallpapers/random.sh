#!/bin/sh

# \ Dependencies:
# |- xwallpaper

IMAGE_DIR=${XDG_CONFIG_HOME}wallpapers/img/
IMAGE_CURRENT="$(find $IMAGE_DIR -type f | shuf -n 1)"
xwallpaper --stretch $IMAGE_CURRENT
