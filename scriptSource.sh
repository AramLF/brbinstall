#!/bin/bash
#need to be in this directory
source ./Functions/Templates/tp1.sh
source ./Functions/Templates/tpRandom.sh

source ./Functions/Theming/dependencies.sh
source ./Functions/Theming/gtk.sh
source ./Functions/Theming/kde.sh
source ./Functions/Theming/icon.sh
source ./Functions/Theming/wallpaper.sh
source ./Functions/Theming/gterminal.sh
source ./Functions/Theming/konsole.sh
source ./Functions/Theming/terminal.sh
source ./Functions/Theming/color-schemes.sh

source ./Functions/DesktopEnvironments/gnome.sh
source ./Functions/DesktopEnvironments/xfce.sh

source ./Functions/Flavoring/matte.sh
source ./Functions/Flavoring/vimi.sh
source ./Functions/Flavoring/wind.sh
source ./Functions/Flavoring/coll.sh
source ./Functions/Flavoring/grey.sh
source ./Functions/Flavoring/catp.sh

source ./Functions/Distributions/Debian/tpDebian.sh
source ./Functions/Distributions/Fedora/tpFedora.sh
source ./Functions/Distributions/ArchBased/tpArch.sh
source ./Functions/Distributions/Void/tpVoid.sh
source ./Functions/Distributions/packages.sh

#var
initialPath=$(pwd)
initialPlaceHolder=$initialPath/placeholder
initialPlacement=$initialPath/..

distrib_package_manager

superUser='sudo' #not used for now
