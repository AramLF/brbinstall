#!/bin/bash

brbinstall_de_gnome_add-dependencies(){
echo -ne "
==============================================================================
Add dependencies for gnomed
==============================================================================
"
sudo $auto_pkg_installer gnome-tweaks
}

brbinstall_de_gnome_del-gnome-software-startup () {
echo -ne "
==============================================================================
Removing gnome-software at startup
==============================================================================
"
mkdir -pv ~/.config/autostart && cp /etc/xdg/autostart/gnome-software-service.desktop ~/.config/autostart/
echo "X-GNOME-Autostart-enabled=false" >> ~/.config/autostart/gnome-software-service.desktop
dconf write /org/gnome/desktop/search-providers/disabled "['org.gnome.Software.desktop']"
#dconf write /org/gnome/software/allow-updates false
dconf write /org/gnome/software/download-updates false
#allow-updates
}

brbinstall_de_gnome_set-gdm-tools () {
echo -ne "
==============================================================================
gdm-tools installation
==============================================================================
"
#yay for arch for example
git clone --depth=1 https://github.com/realmazharhussain/gdm-tools.git $initialCacheFolder/gdm-tools
cd $initialCacheFolder/gdm-tools
echo y|./install.sh
#set-gdm-theme -s Graphite-dark-compact
#set-gdm-theme -s Catppuccin-dark-compact
echo 'Set theme for gdm with set-gdm-theme '
set-gdm-theme -l
}

brbinstall_de_gnome_set-gtk-theme () {
echo -ne "
==============================================================================
Changing gtk-theme
==============================================================================
"
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

#gsettings set org.gnome.desktop.interface gtk-theme "Catppuccin-dark-compact"
#gsettings set org.gnome.desktop.wm.preferences theme "Catppuccin-dark-compact"
#gsettings set org.gnome.shell.extensions.user-theme name "Catppuccin-dark-compact"

gsettings set org.gnome.desktop.interface gtk-theme $1
gsettings set org.gnome.desktop.wm.preferences theme $1
gsettings set org.gnome.shell.extensions.user-theme name $1
}

brbinstall_de_gnome_set-icon-theme () {
echo -ne "
==============================================================================
Changing icons-theme
==============================================================================
"
#gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface icon-theme $1
}

brbinstall_de_gnome_set-wallpaper () {
echo -ne "
==============================================================================
Changing wallpaper
==============================================================================
"
gsettings set org.gnome.desktop.background picture-uri $1
}

brbinstall_de_gnome_template-nemo-nautilus () {
echo -ne "
==============================================================================
Adding template files in the Template folder
==============================================================================
"
cp -vr $initialPath/dotfiles/examples/templates/* $(xdg-user-dir TEMPLATES)/
}

brbinstall_de_gnome_gnomeover(){
echo -ne "
==============================================================================
Gnome-over installation
==============================================================================
"
#for deb based ?
sudo $auto_pkg_installer gnome-shell gnome-control-center gnome-session
sudo $auto_pkg_installer gnome-disk-utility gnome-power-manager gnome-shell-extensions gnome-software gnome-terminal
sudo $auto_pkg_installer gnome-themes-extra network-manager-gnome chrome-gnome-shell gnome-tweaks gnome-shell-extensions
}
