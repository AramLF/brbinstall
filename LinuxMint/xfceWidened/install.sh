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
Linux Mint 20.3 xfce into xfceWidened
------------------------------------------------------------------------------
"
#Linux Mint 20.3 xfce
#git added just in case
echo -ne "
------------------------------------------------------------------------------
Start of installation
------------------------------------------------------------------------------
"
sudo apt-get install -y htop neofetch ncdu git gcc grub-customizer baobab

mkdir ~/Documents/gigs
cd ~/Documents/gigs

echo -ne "
------------------------------------------------------------------------------
papirus-icon-theme installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://git.io/papirus-icon-theme-install | sh
sudo wget -qO- https://git.io/papirus-folders-install | sh
sudo papirus-folders -C paleorange --theme Papirus-Dark

echo -ne "
------------------------------------------------------------------------------
Qogir installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Qogir-theme ~/Documents/gigs/Qogir-theme
cd ~/Documents/gigs/Qogir-theme
sudo ./install.sh
#sudo to install theme as root

echo -ne "
------------------------------------------------------------------------------
dockbarlike installation
------------------------------------------------------------------------------
"
sudo add-apt-repository ppa:xubuntu-dev/extras
sudo apt update
sudo apt install -y xfce4-docklike-plugin

echo -ne "
------------------------------------------------------------------------------
Installation finished, reboot recommended !
------------------------------------------------------------------------------
"

