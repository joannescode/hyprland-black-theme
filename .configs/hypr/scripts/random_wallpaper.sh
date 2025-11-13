#!/usr/bin/env bash

WALLPAPER_DIR="/home/joannes/Pictures/Wallpapers/"

CURRENT_WALL=$(hyprctl hyprpaper listloaded | grep -oE '[^ ]+$' | head -n1)

NEW_WALL=$(find "$WALLPAPER_DIR" -type f | grep -v "$CURRENT_WALL" | shuf -n 1)

MONITORS=$(hyprctl monitors | grep "Monitor" | awk '{print $2}')

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$NEW_WALL"

for MON in $MONITORS; do
    hyprctl hyprpaper wallpaper "$MON,$NEW_WALL"
done