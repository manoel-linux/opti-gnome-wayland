#!/bin/bash

clear
echo "#################################################################"
echo "(opti-gnome-wayland-uninstaller) >> (aug 2023)"
echo "#################################################################"
echo "  ██████  ███    ██  ██████  ███    ███ ███████ "
echo " ██       ████   ██ ██    ██ ████  ████ ██      "
echo " ██   ███ ██ ██  ██ ██    ██ ██ ████ ██ █████   "
echo " ██    ██ ██  ██ ██ ██    ██ ██  ██  ██ ██      "
echo "  ██████  ██   ████  ██████  ██      ██ ███████ "  
echo "#################################################################"
echo "(opti-gnome-wayland-github) >> (https://github.com/manoel-linux/opti-gnome-wayland)"
echo "#################################################################"

if [[ $EUID -ne 0 ]]; then
echo " ███████ ██████  ██████   ██████  ██████  ██ "
echo " ██      ██   ██ ██   ██ ██    ██ ██   ██ ██ "
echo " █████   ██████  ██████  ██    ██ ██████  ██ "
echo " ██      ██   ██ ██   ██ ██    ██ ██   ██    "
echo " ███████ ██   ██ ██   ██  ██████  ██   ██ ██ "                                                                                        
echo "#################################################################"
echo "(Superuser privileges or sudo required to execute the script)" 
echo "#################################################################"
exit 1
fi

clear

sudo rm /usr/bin/opti-gnome-wayland

clear

echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ " 
echo "#################################################################"
echo "(Uninstallation completed)"
echo "#################################################################"
