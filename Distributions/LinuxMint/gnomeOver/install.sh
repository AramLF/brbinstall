#!/bin/bash
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
Start of installation
------------------------------------------------------------------------------
"
sudo apt-get install -y htop ncdu synaptic git gcc grub-customizer baobab

mkdir ~/gigs
cd ~/gigs

echo -ne "
------------------------------------------------------------------------------
papirus-icon-theme installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://git.io/papirus-icon-theme-install | sh

echo -ne "
------------------------------------------------------------------------------
Vimix installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/vimix-gtk-themes ~/gigs/vimix-gtk-themes
cd ~/gigs/vimix-gtk-themes
sudo ./install.sh -c dark -s compact --all
#sudo to install theme as root

echo -ne "
------------------------------------------------------------------------------
Graphite installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Graphite-gtk-theme ~/gigs/Graphite-gtk-theme
cd ~/gigs/Graphite-gtk-theme
sudo ./install.sh --theme all --tweaks rimless --size compact --color dark
#sudo to install theme as root

echo -ne "
------------------------------------------------------------------------------
Gnome installation
------------------------------------------------------------------------------
"
sudo apt-get install -y gnome-shell gnome-control-center gnome-session
sudo apt-get install -y gnome-disk-utility gnome-power-manager gnome-shell-extensions gnome-software gnome-terminal
sudo apt-get install -y gnome-themes-extra network-manager-gnome chrome-gnome-shell gnome-tweaks gnome-shell-extensions

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
#might change allow-updates

echo -ne "
------------------------------------------------------------------------------
gdm-tools installation
------------------------------------------------------------------------------
"
git clone --depth=1 https://github.com/realmazharhussain/gdm-tools.git ~/gigs/gdm-tools
cd ~/gigs/gdm-tools
./install.sh
set-gdm-theme -s Graphite-green-dark-compact

echo -ne "
------------------------------------------------------------------------------
Installation finished, reboot recommended !
------------------------------------------------------------------------------
"