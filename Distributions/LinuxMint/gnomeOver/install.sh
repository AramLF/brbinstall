#!/bin/bash
#Linux Mint 20.3 xfce
cd ../../../
source ./scriptSource.sh

template-1-title

echo -ne "
Linux Mint 20.3 xfce
------------------------------------------------------------------------------
"

#git added just in case
echo -ne "
------------------------------------------------------------------------------
Start of installation
------------------------------------------------------------------------------
"
sudo apt-get install -y htop ncdu synaptic git gcc grub-customizer baobab

mkdir ~/gigs -v
cd ~/gigs

theming-icons-papirus

theming-gtk-vimix

theming-gtk-graphite

echo -ne "
------------------------------------------------------------------------------
Gnome installation
------------------------------------------------------------------------------
"
sudo apt-get install -y gnome-shell gnome-control-center gnome-session
sudo apt-get install -y gnome-disk-utility gnome-power-manager gnome-shell-extensions gnome-software gnome-terminal
sudo apt-get install -y gnome-themes-extra network-manager-gnome chrome-gnome-shell gnome-tweaks gnome-shell-extensions

gnomed-remove-gnome-software-startup

gnomed-set-gdm-tools

template-1-end
