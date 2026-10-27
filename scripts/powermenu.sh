#!/bin/bash

option=$(echo -e "Shutdown\nReboot\nLogout\nLock" | wofi --dmenu --prompt "Power")

case $option in
Shutdown) systemctl poweroff ;;
Reboot) systemctl reboot ;;
Logout) hyprctl dispatch exit ;;
Lock) hyprlock ;;
esac
