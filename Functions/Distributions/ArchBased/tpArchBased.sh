#!/bin/bash

brbinstall_distrib_arch-based_dependencies () {
echo -ne "
------------------------------------------------------------------------------
Arch dependencies installation
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer --needed git base-devel
}

brbinstall_distrib_arch-based_yay (){
echo -ne "
------------------------------------------------------------------------------
yay installation
------------------------------------------------------------------------------
"
if check_command yay; then
  echo 'yay is already installed'
else
  sudo $auto_pkg_installer --needed git base-devel
  git clone https://aur.archlinux.org/yay.git $initialPlaceHolder/yay
  cd $initialPlaceHolder/yay
  makepkg -si
fi
}

brbinstall_distrib_arch-based_lil-script () {
echo -ne "
------------------------------------------------------------------------------
Arch lil script installation
------------------------------------------------------------------------------
"
#might change later

brbinstall_distrib_arch-based_dependencies

brbinstall_distrib_arch-based_yay

}
