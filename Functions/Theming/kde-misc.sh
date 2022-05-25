#!/bin/bash

brbinstall_theming_kde-misc_color-schemes-all (){
echo -ne "
==============================================================================
All color schemes installation
==============================================================================
"
mkdir -p ~/.local/share/color-schemes/
cp -vr $initialPath/Dotfiles/kde/color-schemes/* ~/.local/share/color-schemes/
}

brbinstall_theming_kde-misc_aurorae-all () {
echo -ne "
==============================================================================
Aurorae kde installation
==============================================================================
"
mkdir -p ~/.local/share/aurorae/themes/
cp -vr $initialPath/Dotfiles/kde/aurorae/themes/* ~/.local/share/aurorae/themes/
}

brbinstall_theming_kde-misc_konsole-all (){
echo -ne "
==============================================================================
All konsole appearances installation
==============================================================================
"
mkdir -p ~/.local/share/konsole/
cp -vr $initialPath/Dotfiles/kde/konsole/* ~/.local/share/konsole/
}
