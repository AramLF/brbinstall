#!/bin/bash
#need to be in this directory
source ./functions/templates/tp1.sh
source ./functions/templates/tpRandom.sh

source ./functions/theming/aio.sh
source ./functions/theming/dependencies.sh
source ./functions/theming/fonts.sh
source ./functions/theming/gtk.sh
source ./functions/theming/kde.sh
source ./functions/theming/kitty.sh
source ./functions/theming/polybar.sh
source ./functions/theming/icon.sh
source ./functions/theming/wallpaper.sh
source ./functions/theming/gterminal.sh
source ./functions/theming/terminal.sh
source ./functions/theming/kde-misc.sh
source ./functions/theming/plymouth.sh
source ./functions/theming/xfce4-terminal.sh

source ./functions/desktopenvironments/cinnamon.sh
source ./functions/desktopenvironments/gnome.sh
source ./functions/desktopenvironments/kde.sh
source ./functions/desktopenvironments/xfce.sh

source ./functions/flavoring/all.sh
source ./functions/flavoring/r3.sh
source ./functions/flavoring/neobian.sh
source ./functions/flavoring/neomint.sh

source ./functions/distributions/arch-based/archBased.sh
source ./functions/distributions/deb-based/debianBased.sh
source ./functions/distributions/deb-based/ubuntuBased.sh
source ./functions/distributions/rpm-based/fedoraBased.sh
source ./functions/distributions/rpm-based/miscBased.sh
source ./functions/distributions/rpm-based/openSuseBased.sh
source ./functions/distributions/void-linux/voidLinux.sh
source ./functions/distributions/packages.sh

source ./functions/setup/commands.sh
source ./functions/setup/kitty.sh
source ./functions/setup/maintenance.sh
source ./functions/setup/miscsetup.sh
source ./functions/setup/polybar.sh
source ./functions/setup/picom.sh
source ./functions/setup/rofi.sh
source ./functions/setup/server.sh
source ./functions/setup/start.sh

#var
initialPath=$(pwd)
initialCacheFolder=$initialPath/cachefolder
initialPlacement=$initialPath/..

brbinstall_distrib_package_manager

superUser='sudo' #not used for now

theHostname=$HOSTNAME

optionUsed=""
