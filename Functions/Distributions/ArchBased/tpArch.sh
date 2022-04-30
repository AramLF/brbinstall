#!/bin/bash

brbinstall_distrib_arch_dependencies () {
echo -ne "
------------------------------------------------------------------------------
Arch dependencies installation
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer --needed git base-devel
}

brbinstall_distrib_arch_yay (){
echo -ne "
------------------------------------------------------------------------------
yay installation
------------------------------------------------------------------------------
"
if check_command yay; then
  echo 'yay is already installed'
else
  sudo $auto_pkg_installer --needed git base-devel
  git clone https://aur.archlinux.org/yay.git $initialPlacement/yay
  cd $initialPlacement/yay
  makepkg -si
fi
}

brbinstall_distrib_arch_gdm-tools () {
echo -ne "
------------------------------------------------------------------------------
gdm-tools installation
------------------------------------------------------------------------------
"
yay -S gdm-tools-git --noconfirm
set-gdm-theme -s
}

brbinstall_distrib_arch_gnome-extensions (){
echo -ne "
------------------------------------------------------------------------------
gnome-extensions installation
------------------------------------------------------------------------------
"
yay -S gnome-shell-extensions --noconfirm
yay -S gnome-shell-extension-arc-menu --noconfirm
yay -S gnome-shell-extension-blur-my-shell --noconfirm
yay -S gnome-shell-extension-dash-to-panel --noconfirm
yay -S gnome-shell-extension-vitals-git --noconfirm
yay -S gnome-shell-extension-arch-update --noconfirm
yay -S gnome-shell-extension-gnome-ui-tune-git --noconfirm
yay -S gnome-shell-extension-caffeine-git --noconfirm
yay -S gnome-shell-extension-sound-output-device-chooser --noconfirm
}
