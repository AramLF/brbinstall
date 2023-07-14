#!/bin/bash

brbinstall_distrib_arch-based_dependencies () {
echo -ne "
==================================brbinstall==================================
Arch dependencies installation
==============================================================================
"
sudo $auto_pkg_installer --needed git base-devel
}

brbinstall_distrib_arch-based_yay (){
echo -ne "
==================================brbinstall==================================
yay installation
==============================================================================
"
if check_command yay; then
  echo 'yay is already installed'
else
  sudo $auto_pkg_installer --needed git base-devel
  git clone https://aur.archlinux.org/yay.git $initialCacheFolder/yay
  cd $initialCacheFolder/yay
  makepkg -si
fi
}

brbinstall_distrib_arch-based_locales () {
echo -ne "
==================================brbinstall==================================
Arch generating locales
==============================================================================
"
#locale -a
#fr_FR.UTF-8 UTF-8
#en_US.UTF-8 UTF-8

sudo sh -c 'echo "# Added locales: " >> /etc/locale.gen'
sudo sh -c 'echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen'

sudo locale-gen
}

brbinstall_distrib_arch-based_pacman () {
echo -ne "
==================================brbinstall==================================
Arch pacman
==============================================================================
"
#should be enabled in /etc/pacman.conf
#core extra community multilib
#Color ILoveCandy CheckSpace VerbosePkgLists ParallelDownloads = 5

#sudo sed -i 's/.*D7DAE0.*/EEEEEC/g' /etc/pacman.conf
}

brbinstall_distrib_arch-based_lil-script () {
echo -ne "
==================================brbinstall==================================
Arch lil script installation
==============================================================================
"
#can change later

#brbinstall_distrib_arch-based_pacman

brbinstall_distrib_arch-based_dependencies

brbinstall_distrib_arch-based_yay

brbinstall_distrib_arch-based_locales

brbinstall_setup_miscsetup_vmtools

}
