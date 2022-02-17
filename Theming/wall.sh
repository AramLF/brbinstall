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
