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
./install.sh
}

theming_icon_tela_circle () {
echo -ne "
------------------------------------------------------------------------------
tela-circle-icon-theme installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Tela-circle-icon-theme $initialPlacement/Tela-circle-icon-theme
cd $initialPlacement/Tela-circle-icon-theme
./install.sh
}

theming_icon_numix_circle () {
echo -ne "
------------------------------------------------------------------------------
numix-icon-theme-circle installation
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer numix-icon-theme-circle
}

theming_icon_numix () {
echo -ne "
------------------------------------------------------------------------------
numix-icon-theme installation
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer numix-icon-theme
}
