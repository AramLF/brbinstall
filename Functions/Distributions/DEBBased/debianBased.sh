#!/bin/bash

brbinstall_distrib_deb-based_debian-based_dependencies () {
echo -ne "
==============================================================================
Dependencies Debian installation
==============================================================================
"
sudo $auto_pkg_installer htop neofetch ncdu git gcc synaptic wget curl unzip command-not-found
sudo $auto_pkg_installer plymouth
#maybe add plymouth-themes
}

brbinstall_distrib_deb-based_debian-based_prompt () {
echo -ne "
==============================================================================
Changing PS1 Prompt
==============================================================================
"
#sed over cp because I can (and avoid too many dotfiles)
sed -i 's#\${debian_chroot:+(\$debian_chroot)}\\\[\\033\[01;32m\\]\\u@\\h\\\[\\033\[00m\\]:\\\[\\033\[01;34m\\]\\w\\\[\\033\[00m\\]\\\$ #\\\[\\033\[01;37m\\]┌─\[\\\[\\033\[01;32m\\]\\u\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;36m\\]\\h\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;33m\\]\\w\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\n\\\[\\033\[01;37m\\]└─\[\\\[\\033\[01;33m\\]\$\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\\[\\033\[00;37m\\] #g' ~/.bashrc
}

brbinstall_distrib_deb-based_debian-based_plymouth () {
echo -ne "
==============================================================================
Adding plymouth
==============================================================================
"
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/g' /etc/default/grub
sudo update-grub
}

brbinstall_distrib_deb-based_debian-based_cnf (){
echo -ne "
==============================================================================
Adding alias cnf
==============================================================================
"
#alias cnf='command-not-found'
echo "alias cnf='command-not-found'" >> ~/.bash_aliases
sudo apt-get update
}

brbinstall_distrib_deb-based_debian-based_run-script (){
echo -ne "
==============================================================================
Debian running script
==============================================================================
"
brbinstall_distrib_deb-based_debian-based_dependencies

brbinstall_de_gnome_del-gnome-software-startup

brbinstall_de_gnome_set-gdm-tools

brbinstall_distrib_deb-based_debian-based_prompt

brbinstall_distrib_deb-based_debian-based_plymouth

brbinstall_distrib_deb-based_debian-based_cnf

}

brbinstall_distrib_deb-based_debian-based_remove (){
echo -ne "
==============================================================================
Remove apps Deb
==============================================================================
"
#could change to del bloat apps for any distrib
sudo apt purge -y gnome-2048
sudo apt purge -y gnome-chess
sudo apt purge -y gnome-contacts
sudo apt purge -y gnome-mahjongg
sudo apt purge -y gnome-maps
sudo apt purge -y gnome-mines
sudo apt purge -y gnome-nibbles
sudo apt purge -y gnome-robots
sudo apt purge -y gnome-sudoku
sudo apt purge -y gnome-taquin
sudo apt purge -y gnome-tetravex
sudo apt purge -y gnome-weather
sudo apt purge -y evolution
sudo apt purge -y hitori
sudo apt purge -y quadrapassel
sudo apt purge -y four-in-a-row
sudo apt purge -y swell-foop
sudo apt purge -y tali
sudo apt purge -y malcontent
sudo apt purge -y seahorse
sudo apt purge -y shotwell
sudo apt purge -y gnome-todo
sudo apt purge -y aisleriot
sudo apt purge -y gnome-klotski
sudo apt purge -y five-or-more
sudo apt purge -y gnome-games*
sudo apt purge -y lightsoff
sudo apt purge -y iagno
sudo apt-get remove -y --purge libreoffice*
sudo apt-get remove -y --purge transmission*

sudo apt clean -y
sudo apt autoremove -y
}
