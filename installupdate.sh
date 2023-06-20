#!/bin/bash

clear
echo "#################################################################"
echo "opti-gnome-wayland-installer: june 2023"
echo "#################################################################"
echo "  ██████  ███    ██  ██████  ███    ███ ███████ "
echo " ██       ████   ██ ██    ██ ████  ████ ██      "
echo " ██   ███ ██ ██  ██ ██    ██ ██ ████ ██ █████   "
echo " ██    ██ ██  ██ ██ ██    ██ ██  ██  ██ ██      "
echo "  ██████  ██   ████  ██████  ██      ██ ███████ "                                                                                            
echo "#################################################################"
echo "opti-gnome-wayland-github: https://github.com/manoel-linux/opti-gnome-wayland"
echo "#################################################################"


if [[ $EUID -ne 0 ]]; then
echo "ERROR! Superuser privileges or sudo required to execute the script." 
echo "#################################################################"
exit 1
fi

rm /usr/bin/opti-gnome-wayland

cp opti-gnome-wayland /usr/bin/

chmod +x /usr/bin/opti-gnome-wayland

echo "DONE! Installation/Update completed."
echo "#################################################################"
echo "To use opti-gnome-wayland, execute the following command: opti-gnome-wayland"
echo "#################################################################"
