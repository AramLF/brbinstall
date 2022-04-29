#!/bin/bash

setup_miscsetup_flathub () {
echo -ne "
------------------------------------------------------------------------------
Set flathub
------------------------------------------------------------------------------
"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}

setup_miscsetup_flatpak_override () {
echo -ne "
------------------------------------------------------------------------------
Flatpak override filesystem theme
------------------------------------------------------------------------------
"
sudo flatpak override --filesystem=~/.themes
}

setup_miscsetup_nixpkg () {
echo -ne "
------------------------------------------------------------------------------
Set nixpkg
------------------------------------------------------------------------------
"
#later
}

setup_miscsetup_libadwaita_script () {
echo -ne "
------------------------------------------------------------------------------
Script for theming libadwaita
------------------------------------------------------------------------------
"
#only work on python 3.10 (needs to be modified to be used on older python)
git clone https://github.com/odziom91/libadwaita-theme-changer $initialPlacement/libadwaita-theme-changer
cd $initialPlacement/libadwaita-theme-changer
./libadwaita-tc.py
}

setup_miscsetup_unimatrix () {
echo -ne "
------------------------------------------------------------------------------
Getting unimatrix
------------------------------------------------------------------------------
"
#unimatrix -n -s 96 -l 'o'
sudo $auto_pkg_installer wget
sudo wget https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -O /usr/local/bin/unimatrix
sudo chmod a+rx /usr/local/bin/unimatrix
}
