#!/bin/bash

# --- Reconstruir cache de aplicativos ---
kbuildsycoca6 --noincremental

# --- Programas em Segundo Plano ---
sleep 1
waybar &
hyprpaper &
gammastep &
xsettingsd &
mako &
~/.config/hypr/scripts/random_wallpaper.sh &
# eww daemon && sleep 3 && eww open stats-panel &
