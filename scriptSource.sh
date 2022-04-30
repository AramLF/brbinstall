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
source ./Functions/Theming/xfce4-terminal.sh

source ./Functions/DesktopEnvironments/cinnamon.sh
source ./Functions/DesktopEnvironments/gnome.sh
source ./Functions/DesktopEnvironments/kde.sh
source ./Functions/DesktopEnvironments/xfce.sh

source ./Functions/Flavoring/all.sh
source ./Functions/Flavoring/matte.sh
source ./Functions/Flavoring/vimi.sh
source ./Functions/Flavoring/flue.sh
source ./Functions/Flavoring/roll.sh
source ./Functions/Flavoring/coll.sh
source ./Functions/Flavoring/grey.sh
source ./Functions/Flavoring/catp.sh
source ./Functions/Flavoring/spice.sh
source ./Functions/Flavoring/r3.sh
source ./Functions/Flavoring/neomint.sh

source ./Functions/Distributions/DebianBased/tpDebianBased.sh
source ./Functions/Distributions/FedoraBased/tpFedoraBased.sh
source ./Functions/Distributions/ArchBased/tpArchBased.sh
source ./Functions/Distributions/VoidLinux/tpVoidLinux.sh
source ./Functions/Distributions/UbuntuBased/tpUbuntuBased.sh
source ./Functions/Distributions/packages.sh

source ./Functions/Setup/miscsetup.sh
source ./Functions/Setup/start.sh

#var
initialPath=$(pwd)
initialCacheFolder=$initialPath/cachefolder
initialPlacement=$initialPath/..

brbinstall_distrib_package_manager

superUser='sudo' #not used for now

theHostname=$HOSTNAME
