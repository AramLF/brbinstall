#!/bin/bash

brbinstall_theming_color-schemes_all (){
echo -ne "
------------------------------------------------------------------------------
All color schemes installation
------------------------------------------------------------------------------
"
brbinstall_theming_color-schemes_colloid
}

brbinstall_theming_color-schemes_colloid () {
echo -ne "
------------------------------------------------------------------------------
Color schemes ColloidDark24 installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/color-schemes/ColloidDark24.colors ~/.local/share/color-schemes/ColloidDark24.colors -v
}
