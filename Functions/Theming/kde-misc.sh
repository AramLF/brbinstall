#!/bin/bash

brbinstall_theming_kde-misc_color-schemes_all (){
echo -ne "
==============================================================================
All color schemes installation
==============================================================================
"
cp -vr $initialPath/Dotfiles/kde/color-schemes/* ~/.local/share/color-schemes/
}

brbinstall_theming_kde-misc_aurorae_all () {
echo -ne "
==============================================================================
Aurorae kde installation
==============================================================================
"
cp -vr $initialPath/Dotfiles/kde/aurorae/themes/* ~/.local/share/aurorae/themes/
}

brbinstall_theming_kde-misc_konsole_all (){
echo -ne "
==============================================================================
All konsole appearances installation
==============================================================================
"
cp -vr $initialPath/Dotfiles/kde/konsole/* ~/.local/share/konsole/
}
