#!/bin/bash

template-debian-version () {
echo -ne "Debian 11
------------------------------------------------------------------------------
"
}

template-debian-installs () {
sudo apt-get install -y htop neofetch ncdu git gcc synaptic wget curl unzip command-not-found
sudo apt-get install -y plymouth
#maybe add plymouth-themes
}

template-debian-prompt () {
echo -ne "
------------------------------------------------------------------------------
Changing PS1 Prompt
------------------------------------------------------------------------------
"
#sed over cp because I can (and avoid too many dotfiles)
sed -i 's#\${debian_chroot:+(\$debian_chroot)}\\\[\\033\[01;32m\\]\\u@\\h\\\[\\033\[00m\\]:\\\[\\033\[01;34m\\]\\w\\\[\\033\[00m\\]\\\$ #\\\[\\033\[01;37m\\]┌─\[\\\[\\033\[01;32m\\]\\u\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;36m\\]\\h\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;33m\\]\\w\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\n\\\[\\033\[01;37m\\]└─\[\\\[\\033\[01;33m\\]\$\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\\[\\033\[00;37m\\] #g' ~/.bashrc
}

template-debian-plymouth () {
echo -ne "
------------------------------------------------------------------------------
Adding plymouth
------------------------------------------------------------------------------
"
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/g' /etc/default/grub
sudo update-grub
}

template-debian-cnf (){
echo -ne "
------------------------------------------------------------------------------
Adding alias cnf
------------------------------------------------------------------------------
"
#alias cnf='command-not-found'
echo "alias cnf='command-not-found'" >> ~/.bash_aliases
sudo apt-get update
}
