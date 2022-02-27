#!/bin/bash

theming-icons-papirus () {
echo -ne "
------------------------------------------------------------------------------
papirus-icon-theme installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://git.io/papirus-icon-theme-install | sh
sudo wget -qO- https://git.io/papirus-folders-install | sh
}

theming-icons-tela () {
echo -ne "
------------------------------------------------------------------------------
tela-icon-theme installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Tela-icon-theme ~/gigs/Tela-icon-theme
cd ~/gigs/Tela-icon-theme
./install.sh
}

theming-icons-tela-circle () {
echo -ne "
------------------------------------------------------------------------------
tela-circle-icon-theme installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Tela-circle-icon-theme ~/gigs/Tela-circle-icon-theme
cd ~/gigs/Tela-circle-icon-theme
./install.sh
}

theming-icons-numix-circle () {
echo -ne "
------------------------------------------------------------------------------
numix-icon-theme-circle installation
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer numix-icon-theme-circle
}

theming-icons-numix () {
echo -ne "
------------------------------------------------------------------------------
numix-icon-theme installation
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer numix-icon-theme
}
