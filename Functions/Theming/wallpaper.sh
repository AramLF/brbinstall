#!/bin/bash

brbinstall_theming_wallpaper_evening () {
echo -ne "
------------------------------------------------------------------------------
evening-sky wallpaper download
------------------------------------------------------------------------------
"
cd $initialCacheFolder
wget https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/evening-sky.png
sudo mv evening-sky.png /usr/share/backgrounds/evening-sky.png
}

brbinstall_theming_wallpaper_graphite () {
echo -ne "
------------------------------------------------------------------------------
graphite wallpaper download
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Graphite-gtk-theme $initialCacheFolder/Graphite-gtk-theme
cd $initialCacheFolder/Graphite-gtk-theme
}

brbinstall_theming_wallpaper_spacemars-modified () {
echo -ne "
------------------------------------------------------------------------------
spacemars-modified wallpaper download
------------------------------------------------------------------------------
"
#/usr/share/endeavouros/backgrounds
sudo mkdir -p /usr/share/backgrounds/walls/
sudo cp $initialPath/Dotfiles/walls/space-mars-4480x2520-modified.jpg /usr/share/backgrounds/walls/space-mars-4480x2520-modified.jpg
}

brbinstall_theming_wallpaper_spacenord () {
echo -ne "
------------------------------------------------------------------------------
spacenord wallpaper download
------------------------------------------------------------------------------
"
#/usr/share/endeavouros/backgrounds
sudo mkdir -p /usr/share/backgrounds/walls/
sudo cp $initialPath/Dotfiles/walls/spacenord.png /usr/share/backgrounds/walls/spacenord.png
}
