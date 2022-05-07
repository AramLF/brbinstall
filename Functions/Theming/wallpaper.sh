#!/bin/bash

brbinstall_theming_wallpaper_all(){
echo -ne "
------------------------------------------------------------------------------
every wallpapers download
------------------------------------------------------------------------------
"
sudo mkdir -p /usr/share/backgrounds/walls/

brbinstall_theming_wallpaper_dot

brbinstall_theming_wallpaper_evening
brbinstall_theming_wallpaper_graphite
brbinstall_theming_wallpaper_materia
}

brbinstall_theming_wallpaper_dot () {
echo -ne "
------------------------------------------------------------------------------
every wallpapers from dot
------------------------------------------------------------------------------
"
sudo mkdir -p /usr/share/backgrounds/walls/
sudo cp -vr $initialPath/Dotfiles/walls/* /usr/share/backgrounds/walls/
}

brbinstall_theming_wallpaper_evening () {
echo -ne "
------------------------------------------------------------------------------
evening-sky wallpaper download
------------------------------------------------------------------------------
"
sudo mkdir -p /usr/share/backgrounds/walls/
cd /usr/share/backgrounds/walls/
sudo wget https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/evening-sky.png

}

brbinstall_theming_wallpaper_graphite () {
echo -ne "
------------------------------------------------------------------------------
graphite wallpapers download
------------------------------------------------------------------------------
"
sudo mkdir -p /usr/share/backgrounds/walls/
cd /usr/share/backgrounds/walls/
sudo wget https://raw.githubusercontent.com/vinceliuice/Graphite-gtk-theme/main/wallpaper/Graphite-normal/wave-dark.png
sudo wget https://raw.githubusercontent.com/vinceliuice/Graphite-gtk-theme/main/wallpaper/Graphite-normal/wave-dark-arch.png
sudo wget https://raw.githubusercontent.com/vinceliuice/Graphite-gtk-theme/main/wallpaper/Graphite-normal/wave-dark-debian.png
sudo wget https://raw.githubusercontent.com/vinceliuice/Graphite-gtk-theme/main/wallpaper/Graphite-normal/wave-dark-fedora.png
sudo wget https://raw.githubusercontent.com/vinceliuice/Graphite-gtk-theme/main/wallpaper/Graphite-normal/wave-dark-manjaro.png
sudo wget https://raw.githubusercontent.com/vinceliuice/Graphite-gtk-theme/main/wallpaper/Graphite-normal/wave-dark-ubuntu.png

}

brbinstall_theming_wallpaper_materia () {
echo -ne "
------------------------------------------------------------------------------
materia wallpaper download
------------------------------------------------------------------------------
"
sudo mkdir -p /usr/share/backgrounds/walls/
cd /usr/share/backgrounds/walls/
sudo wget https://raw.githubusercontent.com/PapirusDevelopmentTeam/materia-kde/master/wallpapers/Materia-Dark/contents/images/3840x2160.png

}
