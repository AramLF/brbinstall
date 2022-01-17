#!/usr/bin/env bash
#------------------------------------------------------------------------------
#██████╗ ██████╗ ██████╗ ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
#██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
#██████╔╝██████╔╝██████╔╝██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
#██╔══██╗██╔══██╗██╔══██╗██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
#██████╔╝██║  ██║██████╔╝██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
#╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
#------------------------------------------------------------------------------
echo -ne "
------------------------------------------------------------------------------
██████╗ ██████╗ ██████╗ ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
██████╔╝██████╔╝██████╔╝██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
██╔══██╗██╔══██╗██╔══██╗██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
██████╔╝██║  ██║██████╔╝██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
------------------------------------------------------------------------------
Linux Mint 20.3 xfce
------------------------------------------------------------------------------
"
#Linux Mint 20.3 xfce
#git added just in case
echo -ne "
------------------------------------------------------------------------------
Installation beginning
------------------------------------------------------------------------------
"
sudo apt install htop ncdu synaptic git gcc grub-customizer baobab

mkdir ~/Documents/gigs
cd ~/Documents/gigs

echo -ne "
------------------------------------------------------------------------------
papirus-icon-theme installation
------------------------------------------------------------------------------
"
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

#vimix installation
echo -ne "
------------------------------------------------------------------------------
Vimix installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/vimix-gtk-themes
cd ~/Documents/gigs/vimix-gtk-theme
./install.sh -s compact --all

#Gnome installation
echo -ne "
------------------------------------------------------------------------------
Gnome installation
------------------------------------------------------------------------------
"
sudo apt-get install gnome-shell gnome-control-center gnome-session
sudo apt-get install gnome-disk-utility gnome-power-manager gnome-shell-extensions gnome-software gnome-terminal
sudo apt-get install gnome-themes-extra network-manager-gnome chrome-gnome-shell gnome-tweaks gnome-shell-extensions

#remove gnome-software at startup
echo -ne "
------------------------------------------------------------------------------
Removing gnome-software at startup
------------------------------------------------------------------------------
"
mkdir -pv ~/.config/autostart && cp /etc/xdg/autostart/gnome-software-service.desktop ~/.config/autostart/
echo "X-GNOME-Autostart-enabled=false" >> ~/.config/autostart/gnome-software-service.desktop
dconf write /org/gnome/desktop/search-providers/disabled "['org.gnome.Software.desktop']"
dconf write /org/gnome/software/allow-updates false
dconf write /org/gnome/software/download-updates false

echo -ne "
------------------------------------------------------------------------------
Installation finished, reboot recommended !
------------------------------------------------------------------------------
"

