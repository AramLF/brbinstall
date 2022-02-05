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
ArchBased gnomed
------------------------------------------------------------------------------
"
#ArchBased gnomed

echo -ne "
------------------------------------------------------------------------------
Start of installation
------------------------------------------------------------------------------
"
sudo pacman -Sy htop neofetch ncdu git gcc --noconfirm

mkdir ~/Documents/gigs -v

echo -ne "
------------------------------------------------------------------------------
icon-theme installation
------------------------------------------------------------------------------
"
sudo pacman -Sy papirus-icon-theme --noconfirm
yay -S numix-circle-icon-theme-git --noconfirm

echo -ne "
------------------------------------------------------------------------------
matcha-gtk-theme installation
------------------------------------------------------------------------------
"
yay -S matcha-gtk-theme --noconfirm


echo -ne "
------------------------------------------------------------------------------
gdm-tools installation
------------------------------------------------------------------------------
"
yay -S gdm-tools-git --noconfirm
set-gdm-theme -s Matcha-dark-azul

echo -ne "
------------------------------------------------------------------------------
gnome-extensions installation
------------------------------------------------------------------------------
"
yay -S gnome-shell-extension-arc-menu --noconfirm
yay -S gnome-shell-extension-blur-my-shell --noconfirm
yay -S gnome-shell-extension-dash-to-panel --noconfirm
yay -S gnome-shell-extensions --noconfirm
yay -S gnome-shell-extension-vitals-git --noconfirm
yay -S gnome-shell-extension-arch-update --noconfirm
yay -S gnome-shell-extension-gnome-ui-tune-git --noconfirm
yay -S gnome-shell-extension-caffeine-git --noconfirm
yay -S gnome-shell-extension-sound-output-device-chooser --noconfirm


echo -ne "
------------------------------------------------------------------------------
Installation finished, reboot recommended !
------------------------------------------------------------------------------
"
