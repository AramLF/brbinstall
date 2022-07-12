#!/bin/bash

brbinstall_setup_picom_start() {
echo -ne "
==============================================================================
Picom
==============================================================================
"
sudo $auto_pkg_installer picom
}

brbinstall_setup_picom_personal-conf() {
echo -ne "
==============================================================================
Picom personal conf
==============================================================================
"

mkdir -p ~/.config/picom/
cd ~/.config/picom/

cp -vr $initialPath/dotfiles/picom/picom.conf picom.conf
}

brbinstall_setup_picom_vsync-false() {
echo -ne "
==============================================================================
Picom vsync false
==============================================================================
"
cd ~/.config/picom/
sed -i "s/.*vsync = false.*/vsync = false;/g" picom.conf
sed -i "s/.*vsync = true.*/# vsync = true/g" picom.conf
}
