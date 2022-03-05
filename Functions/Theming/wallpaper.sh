#!/bin/bash

theming_wallpaper_evening () {
echo -ne "
------------------------------------------------------------------------------
evening-sky wallpaper download
------------------------------------------------------------------------------
"
cd $initialPlacement
wget https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/evening-sky.png
sudo mv evening-sky.png /usr/share/backgrounds/evening-sky.png
}

theming_wallpaper_graphite () {
echo -ne "
------------------------------------------------------------------------------
graphite wallpaper download
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Graphite-gtk-theme $initialPlacement/Graphite-gtk-theme
cd $initialPlacement/Graphite-gtk-theme
}
