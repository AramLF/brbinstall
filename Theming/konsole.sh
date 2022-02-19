#!/bin/bash

konsole-add-wave () {
echo -ne "
------------------------------------------------------------------------------
Wave konsole appearance installation
------------------------------------------------------------------------------
"
cp $initialPath/Dotfiles/konsole/OceanWaves.colorscheme ~/.local/share/konsole/OceanWaves.colorscheme -v
}
