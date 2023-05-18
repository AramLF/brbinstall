#!/bin/bash

brbinstall_theming_plymouth_start () {
echo -ne "
==============================================================================
Plymouth
==============================================================================
"
#https://askubuntu.com/questions/2007/how-do-i-change-the-plymouth-bootscreen
#https://wiki.ubuntu.com/Plymouth
#https://wiki.debian.org/fr/plymouth
echo -ne "
#sudo plymouthd ; sudo plymouth --show-splash ; sleep 5 ; sudo plymouth --quit
"


}

brbinstall_theming_plymouth_prepare () {
echo -ne "
==============================================================================
Plymouth prepare
==============================================================================
"
sudo $auto_pkg_installer plymouth-themes
}

brbinstall_theming_plymouth_spinner-lin () {
echo -ne "
==============================================================================
Plymouth with a simple Linux
==============================================================================
"
sudo mkdir -p /usr/share/plymouth/themes/spinner-lin
sudo cp -vr $initialPath/dotfiles/plymouth/spinner-lin/* /usr/share/plymouth/themes/spinner-lin/
}

brbinstall_theming_plymouth_set () {
echo -ne "
==============================================================================
Set plymouth
==============================================================================
"
#can change between distros

#debian and others
#sudo plymouth-set-default-theme -l
#sudo plymouth-set-default-theme -R THEME

sudo plymouth-set-default-theme -R "$1"

#sudo update-initramfs -u
# fedora : sudo dracut
}

brbinstall_theming_plymouth_set_ubuntu () {
echo -ne "
==============================================================================
Set plymouth for ubuntu and maybe others too
==============================================================================
"
#ubuntu
#sudo update-alternatives --config default.plymouth
sudo ln -sfv /usr/share/plymouth/themes/"$1"/"$1".plymouth /etc/alternatives/default.plymouth
sudo update-initramfs -u

}
