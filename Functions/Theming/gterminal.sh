#!/bin/bash

brbinstall_theming_gterminal_set_catppuccin () {
echo -ne "
==============================================================================
Catppuccin-gnome-terminal installation
==============================================================================
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
git clone https://github.com/catppuccin/gnome-terminal $initialCacheFolder/gnome-terminal
cd $initialCacheFolder/gnome-terminal
echo YES |./install.sh "catppuccin"
}

brbinstall_theming_gterminal_set_ende () {
echo -ne "
==============================================================================
EndeavourOS color-schemes gnome-terminal installation
==============================================================================
"
echo -ne "
If you want a personnal theme for gnome-terminal, create a new profile named
'ende' and then press enter
"
read -r -p "Press Enter " response

git clone https://github.com/catppuccin/gnome-terminal $initialCacheFolder/gnome-terminal-ende
cd $initialCacheFolder/gnome-terminal-ende

echo "['#08052B', '#FF7F7F', '#47B35D', '#CC3980', '#7FBAFF', '#7F3FBF', '#7F7FFF', '#CDCCDB', '#7FBAFF', '#FF7F7F', '#9999CC', '#FF7F7F', '#7F7FFF', '#7F3FBF', '#7F7FFF', '#E3E3EA']" > palette
sed -i 's#D7DAE0#E3E3EA#g' install.sh
sed -i '0,/1E1E2E/s//08052B/' install.sh
sed -i 's#1E1E2E#E3E3EA#g' install.sh
sed -i 's#F5E0DC#FF7F7F#g' install.sh

echo YES |./install.sh "ende"
}
