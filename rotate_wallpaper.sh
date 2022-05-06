#!/bin/bash -e

USER=`whoami`
WALLPAPER_DIR="/home/${USER}/Pictures/Wallpapers"
RANDOM_WALLPAPER=`ls ${WALLPAPER_DIR} | shuf -n 1`
RANDOM_WALLPAPER_PATH="${WALLPAPER_DIR}/${RANDOM_WALLPAPER}"
gsettings set org.gnome.desktop.background picture-uri $RANDOM_WALLPAPER_PATH
echo "changed background to $RANDOM_WALLPAPER_PATH"
