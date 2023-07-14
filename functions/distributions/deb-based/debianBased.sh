#!/bin/bash

brbinstall_distrib_deb-based_debian-based_dependencies () {
echo -ne "
==================================brbinstall==================================
Dependencies Debian installation
==============================================================================
"
sudo $auto_pkg_installer htop neofetch ncdu git gcc synaptic wget curl unzip command-not-found ranger
sudo $auto_pkg_installer nala micro tealdeer
sudo $auto_pkg_installer plymouth
#maybe add plymouth-themes
}

brbinstall_distrib_deb-based_debian-based_add-i386 () {
echo -ne "
==================================brbinstall==================================
Debian i386 arch
==============================================================================
"
sudo dpkg --add-architecture i386
#sudo $auto_pkg_installer steam
}

brbinstall_distrib_deb-based_debian-based_main-and-more () {
echo -ne "
==================================brbinstall==================================
Debian add basic repos main contrib non-free non-free-firmware
==============================================================================
"
sudo sed -i "s/contrib//g" /etc/apt/sources.list
sudo sed -i "s/non-free//g" /etc/apt/sources.list
sudo sed -i "s/non-free-firmware//g" /etc/apt/sources.list
sudo sed -i "s/main.*/main contrib non-free non-free-firmware/g" /etc/apt/sources.list
}

brbinstall_distrib_deb-based_debian-based_switch-ver () {
echo -ne "
==================================brbinstall==================================
Debian switch ver
==============================================================================
"
sudo sed -i "s/$1/$2/g" /etc/apt/sources.list
}

brbinstall_distrib_deb-based_debian-based_add-backports () {
echo -ne "
==================================brbinstall==================================
Debian add backports
==============================================================================
"
#might need to use main-and-more and switch-ver after this function
#https://wiki.debian.org/fr/Backports
sudo sh -c 'echo "deb http://deb.debian.org/debian bullseye-backports main" >> /etc/apt/sources.list'
echo -ne "
sudo apt -t bullseye-backports install cockpit
pkg-query -W | grep '~bpo'
"
}

brbinstall_distrib_deb-based_debian-based_i3-gaps-deb () {
echo -ne "
==================================brbinstall==================================
Debian add i3-gaps-deb
==============================================================================
"
#https://github.com/maestrogerardo/i3-gaps-deb
git clone https://github.com/maestrogerardo/i3-gaps-deb $initialCacheFolder/i3-gaps-deb
cd $initialCacheFolder/i3-gaps-deb
./i3-gaps-deb
sudo apt-mark hold i3 i3-wm
}

brbinstall_distrib_deb-based_debian-based_setup-zram () {
echo -ne "
==================================brbinstall==================================
Debian-based setup zram
==============================================================================
"
echo -ne "
#https://fosspost.org/enable-zram-on-linux-better-system-performance/
#https://opensource.com/article/22/11/zram-swap-linux
#https://copyninja.in/blog/zram_memory_overcommit.html
#https://wiki.archlinux.org/title/Zram 
#https://wiki.debian.org/ZRam

#Check if a swap is being used (/dev/zram0 for zram) :
cat /proc/swaps 

#If an other type of swap is being used check :
#Comment using # if one is being used
cat /etc/fstab |grep swap

#comment using # if there is a resume line here
cat /etc/initramfs-tools/conf.d/resume

#Update initframfs and grub
sudo update-initramfs -u
sudo update-grub

#Turn off the swap :
sudo swapoff -a 

#zram with zram-tools :
sudo $auto_pkg_installer zram-tools
cat /etc/default/zramswap #sourced by /usr/bin/zramswap
sudo sed -i "s/.*ALGO=.*/ALGO=lz4/g" /etc/default/zramswap
sudo sed -i "s/.*PERCENT=.*/PERCENT=50/g" /etc/default/zramswap
sudo systemctl restart zramswap.service

#zram with systemd-zram-generator
sudo $auto_pkg_installer systemd-zram-generator
cat /etc/systemd/zram-generator.conf #make the changes
######
[zram0]
zram-size = ceil(ram * 50/100)
compression-algorithm = lz4
swap-priority = 100
fs-type = swap
######
sudo systemctl daemon-reload
sudo systemctl start systemd-zram-setup@zram0.service

#check using :
zramctl
free -h
sudo $auto_pkg_installer stress-ng
"

}

brbinstall_distrib_deb-based_debian-based_plymouth () {
echo -ne "
==================================brbinstall==================================
Show plymouth
==============================================================================
"
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/g' /etc/default/grub
sudo update-grub
}

brbinstall_distrib_deb-based_debian-based_plymouth-unshow () {
echo -ne "
==================================brbinstall==================================
Unshow plymouth
==============================================================================
"
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/g' /etc/default/grub
sudo update-grub
}

brbinstall_distrib_deb-based_debian-based_os-prober-activated () {
echo -ne "
==================================brbinstall==================================
Activate os-prober
==============================================================================
"
sudo sed -i 's/.*GRUB_DISABLE_OS_PROBER=.*/GRUB_DISABLE_OS_PROBER=false/g' /etc/default/grub
sudo update-grub
}

brbinstall_distrib_deb-based_debian-based_cnf (){
echo -ne "
==================================brbinstall==================================
Adding alias cnf
==============================================================================
"
#alias cnf='command-not-found'
echo "alias cnf='command-not-found'" >> ~/.bash_aliases
sudo apt-get update
}

brbinstall_distrib_deb-based_debian-based_run-script (){
echo -ne "
==================================brbinstall==================================
Debian running script
==============================================================================
"
brbinstall_distrib_deb-based_debian-based_dependencies

brbinstall_distrib_deb-based_debian-based_plymouth

brbinstall_distrib_deb-based_debian-based_os-prober-activated

brbinstall_distrib_deb-based_debian-based_cnf

brbinstall_distrib_deb-based_debian-based_add-i386

brbinstall_distrib_deb-based_debian-based_main-and-more

}

brbinstall_distrib_deb-based_debian-based_remove (){
echo -ne "
==================================brbinstall==================================
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
