#!/bin/bash

konsole-appearance-all (){
echo -ne "
------------------------------------------------------------------------------
All konsole appearances installation
------------------------------------------------------------------------------
"
konsole-appearance-oceanwaves
konsole-appearance-oceanpop
konsole-appearance-oceanend
}

konsole-appearance-oceanwaves () {
echo -ne "
------------------------------------------------------------------------------
OceanWaves konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/konsole/OceanWaves.colorscheme ~/.local/share/konsole/OceanWaves.colorscheme -v
}

konsole-appearance-oceanpop () {
echo -ne "
------------------------------------------------------------------------------
OceanPop konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/konsole/OceanPop.colorscheme ~/.local/share/konsole/OceanPop.colorscheme -v
}

konsole-appearance-oceanend () {
echo -ne "
------------------------------------------------------------------------------
OceanEnd konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/konsole/OceanEnd.colorscheme ~/.local/share/konsole/OceanEnd.colorscheme -v
}
