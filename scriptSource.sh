#!/bin/bash
#need to be in this directory
source ./functions/Templates/tp1.sh
source ./functions/Templates/tpRandom.sh

source ./functions/theming/dependencies.sh
source ./functions/theming/gtk.sh
source ./functions/theming/kde.sh
source ./functions/theming/kitty.sh
source ./functions/theming/icon.sh
source ./functions/theming/wallpaper.sh
source ./functions/theming/gterminal.sh
source ./functions/theming/terminal.sh
source ./functions/theming/kde-misc.sh
source ./functions/theming/xfce4-terminal.sh

source ./functions/DesktopEnvironments/cinnamon.sh
source ./functions/DesktopEnvironments/gnome.sh
source ./functions/DesktopEnvironments/kde.sh
source ./functions/DesktopEnvironments/xfce.sh

source ./functions/Flavoring/all.sh
source ./functions/Flavoring/matte.sh
source ./functions/Flavoring/vimi.sh
source ./functions/Flavoring/flue.sh
source ./functions/Flavoring/roll.sh
source ./functions/Flavoring/coll.sh
source ./functions/Flavoring/grey.sh
source ./functions/Flavoring/catp.sh
source ./functions/Flavoring/spice.sh
source ./functions/Flavoring/r3.sh
source ./functions/Flavoring/neomint.sh

source ./functions/Distributions/ArchBased/archBased.sh
source ./functions/Distributions/DEBBased/debianBased.sh
source ./functions/Distributions/DEBBased/ubuntuBased.sh
source ./functions/Distributions/RPMBased/fedoraBased.sh
source ./functions/Distributions/RPMBased/miscBased.sh
source ./functions/Distributions/RPMBased/openSuseBased.sh
source ./functions/Distributions/VoidLinux/voidLinux.sh
source ./functions/Distributions/packages.sh

source ./functions/Setup/kitty.sh
source ./functions/Setup/miscsetup.sh
source ./functions/Setup/polybar.sh
source ./functions/Setup/start.sh

#var
initialPath=$(pwd)
initialCacheFolder=$initialPath/cachefolder
initialPlacement=$initialPath/..

brbinstall_distrib_package_manager

superUser='sudo' #not used for now

theHostname=$HOSTNAME

optionUsed=""
