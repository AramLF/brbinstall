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

brbinstall_theming_gterminal_set_pop () {
echo -ne "
==============================================================================
Pop color-schemes gnome-terminal installation
==============================================================================
"
echo -ne "
If you want a personnal theme for gnome-terminal, create a new profile named
'pop' and then press enter
"
read -r -p "Press Enter " response

git clone https://github.com/catppuccin/gnome-terminal $initialCacheFolder/gnome-terminal-pop
cd $initialCacheFolder/gnome-terminal-pop

echo "['#333333', '#CC0000', '#4E9A06', '#C4A000', '#3565A4', '#75507B', '#06989A', '#D3D7CF', '#887F7C', '#F15D22', '#73C48E', '#FFCE51', '#48B9C7', '#AC7FA8', '#34E2E2', '#EEEEEC']" > palette
sed -i 's#D7DAE0#EEEEEC#g' install.sh
sed -i '0,/1E1E2E/s//333333/' install.sh
sed -i 's#1E1E2E#EEEEEC#g' install.sh
sed -i 's#F5E0DC#48B9C7#g' install.sh

echo YES |./install.sh "pop"
}

brbinstall_theming_gterminal_set_flue () {
echo -ne "
==============================================================================
Flue color-schemes gnome-terminal installation
==============================================================================
"
echo -ne "
If you want a personnal theme for gnome-terminal, create a new profile named
'flue' and then press enter
"
read -r -p "Press Enter " response

git clone https://github.com/catppuccin/gnome-terminal $initialCacheFolder/gnome-terminal-flue
cd $initialCacheFolder/gnome-terminal-flue

echo "['#333333', '#CC0000', '#4E9A06', '#C4A000', '#3565A4', '#75507B', '#06989A', '#D3D7CF', '#887F7C', '#F15D22', '#73C48E', '#FFCE51', '#48B9C7', '#AC7FA8', '#34E2E2', '#EEEEEC']" > palette
sed -i 's#D7DAE0#EEEEEC#g' install.sh
sed -i '0,/1E1E2E/s//333333/' install.sh
sed -i 's#1E1E2E#EEEEEC#g' install.sh
sed -i 's#F5E0DC#48B9C7#g' install.sh

echo YES |./install.sh "flue"
}
