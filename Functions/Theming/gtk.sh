#!/bin/bash

theming-gtk-dependencies () {
echo -ne "
------------------------------------------------------------------------------
Some dependencies for gtk installation
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer sassc
}

theming-gtk-qogir () {
echo -ne "
------------------------------------------------------------------------------
Qogir installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Qogir-theme ~/gigs/Qogir-theme
cd ~/gigs/Qogir-theme/
sudo ./install.sh
#sudo to install theme as root
}

theming-gtk-vimix () {
echo -ne "
------------------------------------------------------------------------------
Vimix installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/vimix-gtk-themes ~/gigs/vimix-gtk-themes
cd ~/gigs/vimix-gtk-themes
sudo ./install.sh -c dark -s compact --all
#sudo to install theme as root
}

theming-gtk-orchis () {
echo -ne "
------------------------------------------------------------------------------
Orchis installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Orchis-theme ~/gigs/Orchis-theme
cd ~/gigs/Orchis-theme
sudo ./install.sh --theme all --tweaks rimless --size compact --color dark
#sudo to install theme as root
}

theming-gtk-graphite () {
echo -ne "
------------------------------------------------------------------------------
Graphite installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Graphite-gtk-theme ~/gigs/Graphite-gtk-theme
cd ~/gigs/Graphite-gtk-theme
sudo ./install.sh --theme all --tweaks rimless --size compact --color dark
#sudo to install theme as root
}

theming-gtk-matcha () {
echo -ne "
------------------------------------------------------------------------------
Matcha installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Matcha-gtk-theme ~/gigs/Matcha-gtk-theme
cd ~/gigs/Matcha-gtk-theme
sudo ./install.sh --color dark
#sudo to install theme as root
}

theming-gtk-catppuccin () {
echo -ne "
------------------------------------------------------------------------------
Catppuccin-gtk-theme installation
------------------------------------------------------------------------------
"
cd ~/gigs

wget https://github.com/catppuccin/gtk/releases/download/update_27_01_22/Catppuccin-dark-compact-hdpi.zip
wget https://github.com/catppuccin/gtk/releases/download/update_27_01_22/Catppuccin-dark-compact-xhdpi.zip
wget https://github.com/catppuccin/gtk/releases/download/update_27_01_22/Catppuccin-dark-compact.zip

unzip Catppuccin-dark-compact-hdpi.zip
unzip Catppuccin-dark-compact-xhdpi.zip
unzip Catppuccin-dark-compact.zip

sudo mv Catppuccin-dark-compact-hdpi /usr/share/themes/Catppuccin-dark-compact-hdpi --backup
sudo mv Catppuccin-dark-compact-xhdpi /usr/share/themes/Catppuccin-dark-compact-xhdpi --backup
sudo mv Catppuccin-dark-compact /usr/share/themes/Catppuccin-dark-compact --backup

rm -rf Catppuccin-dark-compact-hdpi.zip
rm -rf Catppuccin-dark-compact-xhdpi.zip
rm -rf Catppuccin-dark-compact.zip
}
