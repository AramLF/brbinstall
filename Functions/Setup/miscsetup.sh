#!/bin/bash

brbinstall_setup_miscsetup_flathub () {
echo -ne "
==============================================================================
Set flathub
==============================================================================
"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}

brbinstall_setup_miscsetup_flatpak-override () {
echo -ne "
==============================================================================
Flatpak override filesystem theme
==============================================================================
"
sudo flatpak override --filesystem=~/.themes
}

brbinstall_setup_miscsetup_nixpkg () {
echo -ne "
==============================================================================
Set nixpkg
==============================================================================
"
#later
}

brbinstall_setup_miscsetup_path () {
echo -ne "
==============================================================================
PATH variable
==============================================================================
"
#change it ? (be careful)

# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi

# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/.local/bin" ] ; then
#    PATH="$HOME/.local/bin:$PATH"
#fi
#Ubuntu
echo "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

#openSuse
echo "/home/usr/bin:/usr/local/bin:/usr/bin:/bin"
}

brbinstall_setup_miscsetup_libadwaita-script () {
echo -ne "
==============================================================================
Script for theming libadwaita
==============================================================================
"
#only work on python 3.10 (needs to be modified to be used on older python)
git clone https://github.com/odziom91/libadwaita-theme-changer $initialCacheFolder/libadwaita-theme-changer
cd $initialCacheFolder/libadwaita-theme-changer
./libadwaita-tc.py
}

brbinstall_setup_miscsetup_unimatrix () {
echo -ne "
==============================================================================
Getting unimatrix
==============================================================================
"
#unimatrix -n -s 96 -l 'o'
sudo $auto_pkg_installer wget
sudo wget https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -O /usr/local/bin/unimatrix
sudo chmod a+rx /usr/local/bin/unimatrix
}

brbinstall_setup_miscsetup_cava () {
echo -ne "
==============================================================================
Getting cava
==============================================================================
"
#maybe more idk
sudo $auto_pkg_installer cava

}
