#!/bin/bash

de_gnome_add_dependencies(){
echo -ne "
------------------------------------------------------------------------------
Add dependencies for gnomed
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer htop neofetch ncdu git gcc wget curl unzip
sudo $auto_pkg_installer gnome-tweaks
}

de_gnome_del_gnome_software_startup () {
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

de_gnome_set_gdm_tools () {
echo -ne "
------------------------------------------------------------------------------
gdm-tools installation
------------------------------------------------------------------------------
"
git clone --depth=1 https://github.com/realmazharhussain/gdm-tools.git $initialPlacement/gdm-tools
cd $initialPlacement/gdm-tools
echo y|./install.sh
#set-gdm-theme -s Graphite-dark-compact
#set-gdm-theme -s Catppuccin-dark-compact
echo 'Set theme for gdm with set-gdm-theme '
set-gdm-theme -l
}

de_gnome_set_gtk_theme () {
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

de_gnome_set_icon_theme () {
echo -ne "
------------------------------------------------------------------------------
Changing icons-theme
------------------------------------------------------------------------------
"
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
}

de_gnome_set_wallpaper () {
echo -ne "
------------------------------------------------------------------------------
Changing wallpaper
------------------------------------------------------------------------------
"
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/evening-sky.png
}

de_gnome_gnomeover_ubuntu(){
echo -ne "
------------------------------------------------------------------------------
Gnome-over installation
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer gnome-shell gnome-control-center gnome-session
sudo $auto_pkg_installer gnome-disk-utility gnome-power-manager gnome-shell-extensions gnome-software gnome-terminal
sudo $auto_pkg_installer gnome-themes-extra network-manager-gnome chrome-gnome-shell gnome-tweaks gnome-shell-extensions
}