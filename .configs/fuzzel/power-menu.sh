#!/bin/bash

options="  Shutdown
  Reboot
  Lock
⏾  Suspend"

choice=$(echo -e "$options" | fuzzel --dmenu \
    --lines=4 \
    --hide-prompt \
    --width=30 )

case "$choice" in
    ("  Shutdown")
        systemctl poweroff & disown
        ;;
    ("  Reboot")
        systemctl reboot & disown
        ;;
    ("  Lock")
        hyprlock & disown
        ;;
    ("⏾  Suspend")
        systemctl suspend & disown
        ;;
esac
