#!/bin/bash

theming-wall-evening () {
echo -ne "
------------------------------------------------------------------------------
evening-sky wallpaper download
------------------------------------------------------------------------------
"
cd ~/gigs
wget https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/evening-sky.png
sudo mv evening-sky.png /usr/share/backgrounds/evening-sky.png
}

theming-wall-graphite () {
echo -ne "
------------------------------------------------------------------------------
graphite wallpaper download
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Graphite-gtk-theme ~/gigs/Graphite-gtk-theme
cd ~/gigs/Graphite-gtk-theme
}
