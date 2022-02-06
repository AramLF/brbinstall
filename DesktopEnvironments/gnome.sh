#!/bin/bash

gnomed-remove-gnome-software-startup () {
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

gnomed-set-gdm-tools () {
echo -ne "
------------------------------------------------------------------------------
gdm-tools installation
------------------------------------------------------------------------------
"
git clone --depth=1 https://github.com/realmazharhussain/gdm-tools.git ~/Documents/gigs/gdm-tools
cd ~/Documents/gigs/gdm-tools
echo y|./install.sh
#set-gdm-theme -s Graphite-green-dark-compact
set-gdm-theme -s Catppuccin-dark-compact
}

gnomed-set-gtk-theme () {
echo -ne "
------------------------------------------------------------------------------
Changing gtk-theme
------------------------------------------------------------------------------
"
gsettings set org.gnome.desktop.interface gtk-theme "Catppuccin-dark-compact"
gsettings set org.gnome.desktop.wm.preferences theme "Catppuccin-dark-compact"
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.shell.extensions.user-theme name "Catppuccin-dark-compact"
}

gnomed-set-icons-theme () {
echo -ne "
------------------------------------------------------------------------------
Changing icons-theme
------------------------------------------------------------------------------
"
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
}

gnomed-set-wallpaper () {
echo -ne "
------------------------------------------------------------------------------
Changing wallpaper
------------------------------------------------------------------------------
"
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/evening-sky.png
}
