#!/bin/bash
#need to be in this directory
source ./functions/templates/tp1.sh
source ./functions/templates/tpRandom.sh

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

source ./functions/desktopenvironments/cinnamon.sh
source ./functions/desktopenvironments/gnome.sh
source ./functions/desktopenvironments/kde.sh
source ./functions/desktopenvironments/xfce.sh

source ./functions/flavoring/all.sh
source ./functions/flavoring/matte.sh
source ./functions/flavoring/vimi.sh
source ./functions/flavoring/flue.sh
source ./functions/flavoring/roll.sh
source ./functions/flavoring/coll.sh
source ./functions/flavoring/grey.sh
source ./functions/flavoring/catp.sh
source ./functions/flavoring/spice.sh
source ./functions/flavoring/r3.sh
source ./functions/flavoring/neomint.sh

source ./functions/distributions/arch-based/archBased.sh
source ./functions/distributions/DEBBased/debianBased.sh
source ./functions/distributions/DEBBased/ubuntuBased.sh
source ./functions/distributions/RPMBased/fedoraBased.sh
source ./functions/distributions/RPMBased/miscBased.sh
source ./functions/distributions/RPMBased/openSuseBased.sh
source ./functions/distributions/VoidLinux/voidLinux.sh
source ./functions/distributions/packages.sh

source ./functions/setup/kitty.sh
source ./functions/setup/miscsetup.sh
source ./functions/setup/polybar.sh
source ./functions/setup/start.sh

#var
initialPath=$(pwd)
initialCacheFolder=$initialPath/cachefolder
initialPlacement=$initialPath/..

brbinstall_distrib_package_manager

superUser='sudo' #not used for now

theHostname=$HOSTNAME

optionUsed=""
