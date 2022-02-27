#!/bin/bash

gnomed-terminal-set-catppuccin () {
echo -ne "
------------------------------------------------------------------------------
Catppuccin-gnome-terminal installation
------------------------------------------------------------------------------
"
echo -ne "
If you want a personnal theme for gnome-terminal, create a new profile named
'catppuccin' and then press enter
"
read -r -p "Press Enter " response
#case "$response" in
#    [yY][eE][sS]|[yY])
#        do_something
#        ;;
#    *)
#        do_something_else
#        ;;
#esac
git clone https://github.com/catppuccin/gnome-terminal ~/gigs/gnome-terminal
cd ~/gigs/gnome-terminal
echo YES |./install.sh "catppuccin"
}
