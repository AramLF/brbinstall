#!/bin/bash

theming_konsole_all (){
echo -ne "
------------------------------------------------------------------------------
All konsole appearances installation
------------------------------------------------------------------------------
"
theming_konsole_oceanwaves
theming_konsole_oceanpop
theming_konsole_oceanend
}

theming_konsole_oceanwaves () {
echo -ne "
------------------------------------------------------------------------------
OceanWaves konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/konsole/OceanWaves.colorscheme ~/.local/share/konsole/OceanWaves.colorscheme -v
}

theming_konsole_oceanpop () {
echo -ne "
------------------------------------------------------------------------------
OceanPop konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/konsole/OceanPop.colorscheme ~/.local/share/konsole/OceanPop.colorscheme -v
}

theming_konsole_oceanend () {
echo -ne "
------------------------------------------------------------------------------
OceanEnd konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/konsole/OceanEnd.colorscheme ~/.local/share/konsole/OceanEnd.colorscheme -v
}
