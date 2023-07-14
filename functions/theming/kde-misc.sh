#!/bin/bash

brbinstall_theming_kde-misc_color-schemes-all (){
echo -ne "
==================================brbinstall==================================
All color schemes installation
==============================================================================
"
mkdir -p ~/.local/share/color-schemes/
cp -vr $initialPath/dotfiles/kde/color-schemes/* ~/.local/share/color-schemes/
}

brbinstall_theming_kde-misc_aurorae-all () {
echo -ne "
==================================brbinstall==================================
Aurorae kde installation
==============================================================================
"
mkdir -p ~/.local/share/aurorae/themes/
cp -vr $initialPath/dotfiles/kde/aurorae/themes/* ~/.local/share/aurorae/themes/
}

brbinstall_theming_kde-misc_konsole-all (){
echo -ne "
==================================brbinstall==================================
All konsole appearances installation
==============================================================================
"
mkdir -p ~/.local/share/konsole/
cp -vr $initialPath/dotfiles/kde/konsole/* ~/.local/share/konsole/
}
