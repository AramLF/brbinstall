#!/bin/bash

theming_icon_papirus () {
echo -ne "
------------------------------------------------------------------------------
papirus-icon-theme installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://git.io/papirus-icon-theme-install | sh
sudo wget -qO- https://git.io/papirus-folders-install | sh
}

theming_icon_tela () {
echo -ne "
------------------------------------------------------------------------------
tela-icon-theme installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Tela-icon-theme $initialPlacement/Tela-icon-theme
cd $initialPlacement/Tela-icon-theme
sudo ./install.sh
}

theming_icon_tela_circle () {
echo -ne "
------------------------------------------------------------------------------
tela-circle-icon-theme installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Tela-circle-icon-theme $initialPlacement/Tela-circle-icon-theme
cd $initialPlacement/Tela-circle-icon-theme
sudo ./install.sh
}

theming_icon_numix_both () {
echo -ne "
------------------------------------------------------------------------------
numix-icon-theme & circle installation
------------------------------------------------------------------------------
"
#sudo $auto_pkg_installer numix-icon-theme
#sudo $auto_pkg_installer numix-icon-theme-circle

git clone https://github.com/numixproject/numix-icon-theme $initialPlacement/numix-icon-theme
cd $initialPlacement/numix-icon-theme
sudo cp -r Numix/ /usr/share/icons/Numix/
sudo cp -r Numix-Light/ /usr/share/icons/Numix-Light/

git clone https://github.com/numixproject/numix-icon-theme-circle $initialPlacement/numix-icon-theme-circle
cd $initialPlacement/numix-icon-theme-circle
sudo cp -r Numix-Circle/ /usr/share/icons/Numix-Circle/
sudo cp -r Numix-Circle-Light/ /usr/share/icons/Numix-Circle-Light/
}

theming_icon_yaruextended () {
echo -ne "
------------------------------------------------------------------------------
YaruExtended Installation
------------------------------------------------------------------------------
"
#later idk
#cd $initialPlacement
#wget https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/evening-sky.png
#extract etc...
#sudo cp -r evening-sky.png /usr/share/backgrounds/evening-sky.png
}
