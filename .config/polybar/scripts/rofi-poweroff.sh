#!/bin/bash

rofi_poweroff_menu () {
    echo -e "Logout\nReboot\nShutdown" | rofi -font "Iosevka Bold 11" -show drun -show-icons -width 20 -l 3 -dmenu -i
}

chosen=$(rofi_poweroff_menu)

if [[ $chosen = "Logout" ]]; then
    bspc quit
elif [[ $chosen = "Shutdown" ]]; then
	shutdown -h now
elif [[ $chosen = "Reboot" ]]; then
	reboot
fi