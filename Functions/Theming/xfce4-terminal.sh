#!/bin/bash

brbinstall_theming_xfce4-terminal_all () {
echo -ne "
==============================================================================
all colorschemes xfce4-terminal installation
==============================================================================
"
brbinstall_theming_xfce4-terminal_catppuccin

brbinstall_theming_xfce4-terminal_endeavouros

}


brbinstall_theming_xfce4-terminal_catppuccin () {
echo -ne "
==============================================================================
catppuccin colorschemes xfce4-terminal installation
==============================================================================
"
sudo mkdir -p /usr/share/xfce4/terminal/colorschemes
cd /usr/share/xfce4/terminal/colorschemes
sudo wget https://raw.githubusercontent.com/catppuccin/xfce4-terminal/master/Catppuccin.theme

}


brbinstall_theming_xfce4-terminal_endeavouros () {
echo -ne "
==============================================================================
endeavouros colorschemes xfce4-terminal installation
==============================================================================
"
sudo mkdir -p /usr/share/xfce4/terminal/colorschemes
cd /usr/share/xfce4/terminal/colorschemes
sudo wget https://raw.githubusercontent.com/endeavouros-team/endeavouros-xfce4-terminal-colors/master/endeavouros.theme
}
