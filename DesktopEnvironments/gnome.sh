#!/bin/bash

gs-startup () {
echo -ne "
------------------------------------------------------------------------------
Removing gnome-software at startup
------------------------------------------------------------------------------
"
mkdir -pv ~/.config/autostart && cp /etc/xdg/autostart/gnome-software-service.desktop ~/.config/autostart/
echo "X-GNOME-Autostart-enabled=false" >> ~/.config/autostart/gnome-software-service.desktop
dconf write /org/gnome/desktop/search-providers/disabled "['org.gnome.Software.desktop']"
#dconf write /org/gnome/software/allow-updates false
dconf write /org/gnome/software/download-updates false
#allow-updates
}

set-gdm () {
echo -ne "
------------------------------------------------------------------------------
gdm-tools installation
------------------------------------------------------------------------------
"
git clone --depth=1 https://github.com/realmazharhussain/gdm-tools.git ~/Documents/gigs/gdm-tools
cd ~/Documents/gigs/gdm-tools
./install.sh
#set-gdm-theme -s Graphite-green-dark-compact
}
