#!/bin/bash
#need to be in this directory
source ./Templates/tp1.sh
source ./Templates/tpRandom.sh

source ./Theming/gtk.sh
source ./Theming/kde.sh
source ./Theming/icons.sh
source ./Theming/wall.sh
source ./Theming/gterminal.sh
source ./Theming/konsole.sh

source ./DesktopEnvironments/gnome.sh
source ./DesktopEnvironments/xfce.sh

source ./Distributions/Debian/tpDebian.sh
source ./Distributions/Fedora/tpFedora.sh

#var
initialPath=$(pwd)
initialPlaceHolder=$initialPath/placeholder
