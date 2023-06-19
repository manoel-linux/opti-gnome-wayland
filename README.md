# opti-gnome-wayland

- Use at your own risk

- It only works on Wayland

- opti-gnome-wayland: june 2023

- build-latest: 0.0.5

- opti-gnome-wayland is an open-source project, and we are happy to share it with the community. You have complete freedom to do whatever you want with opti-gnome-wayland, in accordance with the terms of the MIT license. You can modify, distribute, use it in your own projects, or even create a fork of opti-gnome-wayland to add additional features.

## Installation

- To install opti-gnome-wayland, follow the steps below:

# 1. Clone this repository by running the following command

- git clone https://github.com/manoel-linux/opti-gnome-wayland.git

# 2. To install the opti-gnome-wayland script, follow these steps

- chmod a+x `installupdate.sh`

- sudo `./installupdate.sh`

- When installing opti-gnome-wayland for the first time, you may encounter an error "`rm /usr/bin/opti-gnome-wayland`" if the file doesn't exist. This removal command is part of - - the update process, but during the initial installation, the opti-gnome-wayland file is not yet present in the `/usr/bin/` directory. Therefore, you can safely ignore -- this error as it will not affect the installation of opti-gnome-wayland. The script will proceed to copy the opti-gnome-wayland file to the `/usr/bin/` directory and set the ----- correct permissions.

# 3. Execute the opti-gnome-wayland script

- `opti-gnome-wayland`

# For uninstall

- chmod a+x `uninstall.sh`

- sudo `./uninstall.sh`

# Other Projects

- DEB2XBPS: A tool I developed based on the code of xdeb, specifically designed for Void Linux. DEB2XBPS enables the conversion of .deb packages to the .xbps  - - - format used in Void Linux, simplifying package management in this distribution. You can find the source code and additional information about DEB2XBPS in the - - following repository: https://github.com/manoel-linux/deb2xbps-shlibs-voidpackages. It is based on the xdeb.

- CPU-T: version for void A command-line tool that I developed from scratch. CPU-T provides detailed information about the CPU of your system, including CPU model, number of cores - and threads, CPU frequency, supported instructions, memory information, disk information, network information, and more. It is a useful tool for system analysis - and optimization. You can find the source code and more information about CPU-T in the following repository: https://github.com/manoel-linux/cpu-t-void-linux.

- CPU-T version for ubuntu/debian: https://github.com/manoel-linux/cpu-t-ubuntu-debian.

- CPU-T version for Arch/Artix/Manjaro: https://github.com/manoel-linux/cpu-t-arch-artix-manjaro.

# Project Status

- The opti-gnome-wayland project is currently in development. The latest stable version is 0.0.5. We aim to provide regular updates and add more features in the future.

# License

- opti-gnome-wayland is licensed under the MIT License. See the LICENSE file for more information.

# Acknowledgements

- We would like to thank the open-source community for their support and the libraries used in the development of opti-gnome-wayland.
