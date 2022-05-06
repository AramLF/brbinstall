#!/bin/bash

brbinstall_theming_konsole_all (){
echo -ne "
------------------------------------------------------------------------------
All konsole appearances installation
------------------------------------------------------------------------------
"
brbinstall_theming_konsole_oceanwaves
brbinstall_theming_konsole_oceanpop
brbinstall_theming_konsole_oceanend
}

brbinstall_theming_konsole_oceanwaves () {
echo -ne "
------------------------------------------------------------------------------
OceanWaves konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/kde/konsole/OceanWaves.colorscheme ~/.local/share/konsole/OceanWaves.colorscheme -v
}

brbinstall_theming_konsole_oceanpop () {
echo -ne "
------------------------------------------------------------------------------
OceanPop konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/kde/konsole/OceanPop.colorscheme ~/.local/share/konsole/OceanPop.colorscheme -v
}

brbinstall_theming_konsole_oceanend () {
echo -ne "
------------------------------------------------------------------------------
OceanEnd konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/kde/konsole/OceanEnd.colorscheme ~/.local/share/konsole/OceanEnd.colorscheme -v
}
