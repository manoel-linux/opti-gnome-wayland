#!/bin/bash

clear

show_main_menu() {
while true; do
clear
echo "#################################################################"
echo "(opti-gnome-wayland-installer) >> (aug 2023)"
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

sudo pacman -Sy
sudo pacman -S iputils -y
echo "#################################################################"
sudo xbps-install -Sy
sudo xbps-install -S inetutils-ping -y
echo "#################################################################"
sudo apt-get update
sudo apt-get install --no-install-recommends inetutils-ping -y
echo "#################################################################"

clear


echo "#################################################################"
echo "(1)> (Install)  >> (the opti-gnome-wayland version of Void-Linux)"
echo "(2)> (Install)  >> (the opti-gnome-wayland version of Ubuntu/Debian)"
echo "(3)> (Install)  >> (the opti-gnome-wayland version of Arch-Artix-Manjaro)"
echo "(4)> (Exit)"
echo "#################################################################"

read -p "(Enter your choice) >> " choice
echo "#################################################################"

case $choice in
1)
show_void-linux
;;
2)
show_ubuntu-debian
;;
3)
show_arch-artix-manjaro
;;
4)
exit 0
;;
*)
echo "(Invalid choice. Please try again)"
echo "#################################################################"
sleep 2
;;
esac
done
}

show_void-linux() {
while true; do
clear
if [ ! -x /bin/xbps-install ]; then
echo "#################################################################"
echo "(Warning) >> (You are trying to run a version meant for another distribution) 
(To prevent issues, the script has blocked a warning to execute the version meant for your distribution)"
echo "#################################################################"
exit 1
fi
echo "(Checking for updates in Void Linux)" 
echo "#################################################################"
sudo xbps-install -Sy
sudo xbps-install -S unzip binutils tar curl xbps xz grep gawk sed -y
clear
echo "#################################################################"

read -p "(Do you want to update your system) (y/n) >> " choice
echo "#################################################################"
if [[ $choice == "y" || $choice == "Y" ]]; then
sudo xbps-install -Sy
sudo xbps-install -Syu -y
else
echo "(Skipping system update)"
echo "#################################################################"
fi

clear

sudo rm /usr/bin/opti-gnome-wayland

clear

sudo cp opti-gnome-wayland /usr/bin/

sudo chmod +x /usr/bin/opti-gnome-wayland

clear

echo "#################################################################"
echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "(Installation/Update completed)"
echo "#################################################################"
echo "(To use opti-gnome-wayland, execute the following command >> opti-gnome-wayland)"
echo "#################################################################"
read -rsn1 -p "(press Enter to return to the main menu)
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_ubuntu-debian() {
while true; do
clear
if [ ! -x /bin/apt ]; then
echo "#################################################################"
echo "(Warning) >> (You are trying to run a version meant for another distribution) 
(To prevent issues, the script has blocked a warning to execute the version meant for your distribution)"
echo "#################################################################"
exit 1
fi
echo "#################################################################"
echo "(Checking for updates in Ubuntu/Debian)" 
echo "#################################################################"
sudo apt-get update
sudo apt-get install --no-install-recommends unzip binutils tar curl xz-utils grep gawk sed -y
clear
echo "#################################################################"

read -p "(Do you want to update your system) (y/n) >> " choice
echo "#################################################################"
if [[ $choice == "y" || $choice == "Y" ]]; then
sudo apt-get update
sudo apt-get upgrade -y
else
echo "(Skipping system update)"
echo "#################################################################"
fi

clear

sudo rm /usr/bin/opti-gnome-wayland

clear

sudo cp opti-gnome-wayland /usr/bin/

sudo chmod +x /usr/bin/opti-gnome-wayland

clear

echo "#################################################################"
echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "(Installation/Update completed)"
echo "#################################################################"
echo "(To use opti-gnome-wayland, execute the following command >> opti-gnome-wayland)"
echo "#################################################################"
read -rsn1 -p "(press Enter to return to the main menu)
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_arch-artix-manjaro() {
while true; do
clear
if [ ! -x /bin/pacman ]; then
echo "#################################################################"
echo "(Warning) >> (You are trying to run a version meant for another distribution) 
(To prevent issues, the script has blocked a warning to execute the version meant for your distribution)"
echo "#################################################################"
exit 1
fi
echo "#################################################################"
echo "(Checking for updates in Arch/Artix/Manjaro)" 
echo "#################################################################"
sudo pacman -Sy
sudo pacman -S unzip binutils tar curl xz grep gawk sed -y
clear
echo "#################################################################"

read -p "(Do you want to update your system) (y/n) >> " choice
echo "#################################################################"
if [[ $choice == "y" || $choice == "Y" ]]; then
sudo pacman -Sy
sudo pacman -Syu -y
else
echo "(Skipping system update)"
echo "#################################################################"
fi

clear

sudo rm /usr/bin/opti-gnome-wayland

clear

sudo cp opti-gnome-wayland /usr/bin/

sudo chmod +x /usr/bin/opti-gnome-wayland

clear

echo "#################################################################"
echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "(Installation/Update completed)"
echo "#################################################################"
echo "(To use opti-gnome-wayland, execute the following command >> opti-gnome-wayland)"
echo "#################################################################"
read -rsn1 -p "(press Enter to return to the main menu)
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_main_menu
