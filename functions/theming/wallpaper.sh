#!/bin/bash

brbinstall_theming_wallpaper_all(){
echo -ne "
==============================================================================
every wallpapers download
==============================================================================
"
sudo mkdir -p /usr/share/backgrounds/walls/

brbinstall_theming_wallpaper_rands-walls

brbinstall_theming_wallpaper_evening
brbinstall_theming_wallpaper_graphite
brbinstall_theming_wallpaper_materia
}

brbinstall_theming_wallpaper_rands-walls () {
echo -ne "
==============================================================================
every wallpapers from rands-walls
==============================================================================
"
git clone https://github.com/AramLF/rands $initialCacheFolder/rands

sudo mkdir -p /usr/share/backgrounds/walls/

sudo cp -vr $initialCacheFolder/rands/walls/* /usr/share/backgrounds/walls/
}

brbinstall_theming_wallpaper_rands-walls-spe () {
echo -ne "
==============================================================================
spe wall from rands-walls
==============================================================================
"
git clone https://github.com/AramLF/rands $initialCacheFolder/rands

sudo mkdir -p /usr/share/backgrounds/walls/

sudo cp -vr $initialCacheFolder/rands/walls/aholmes_moraine_lake-lmuna.jpg /usr/share/backgrounds/walls/aholmes_moraine_lake-lmuna.jpg
}

brbinstall_theming_wallpaper_evening () {
echo -ne "
==============================================================================
evening-sky wallpaper download
==============================================================================
"
sudo mkdir -p /usr/share/backgrounds/walls/
cd /usr/share/backgrounds/walls/
sudo wget https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/evening-sky.png

}

brbinstall_theming_wallpaper_graphite () {
echo -ne "
==============================================================================
graphite wallpapers download
==============================================================================
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
==============================================================================
materia wallpaper download
==============================================================================
"
sudo mkdir -p /usr/share/backgrounds/walls/
cd /usr/share/backgrounds/walls/
sudo wget https://raw.githubusercontent.com/PapirusDevelopmentTeam/materia-kde/master/wallpapers/Materia-Dark/contents/images/3840x2160.png

}