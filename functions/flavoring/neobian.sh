#!/bin/bash

brbinstall_flavoring_neobian_start () {
echo -ne "
==============================================================================
Debian
==============================================================================
"
#none for now
#README.md in flavor
}

brbinstall_flavoring_neobian_prevention () {
echo -ne "
==============================================================================
Prevention
==============================================================================
"
#prevention
ls

sudo $auto_pkg_installer lightdm

sudo systemctl enable lightdm

sudo systemctl set-default graphical.target

sudo $auto_pkg_installer xfce4?



#xfce4
#xfce4-goodies(term and nm tray and everything in it ?)<--(maybe avoid it ?) xfce4-whiskermenu-plugin
sudo $auto_pkg_installer mousepad
sudo $auto_pkg_installer nm-applet nm-tray
sudo $auto_pkg_installer lightdm-gtk-greeter-settings


sudo $auto_pkg_installer firefox pavucontrol ?


#check les services

#mix papirus and yaru ?


#server
sudo $auto_pkg_installer cockpit openssh-server
sudo systemctl enable cockpit
sudo systemctl status ssh
#ssh wvm@192.168.0.37
#!!! need to add the xfw4 light one


#other
#wallpaper, icons, menuIcon(whiskermenu), systray icons, change time display, original font

#/etc/sddm.conf

brbinstall_theming_plymouth_prepare

brbinstall_theming_plymouth_spinner-lin

brbinstall_theming_plymouth_set "spinner-lin"

#i3
#https://github.com/maestrogerardo/i3-gaps-deb
#https://askubuntu.com/questions/18654/how-to-prevent-updating-of-a-specific-package


brbinstall_theming_gtk_adw-gtk3


#all the flatpaks
#shortwave radioparadise
echo -ne "
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub de.haeckerfelix.Shortwave
flatpak install -y flathub com.usebottles.bottles
flatpak install -y flathub fyi.zoey.TeX-Match

"

#songrec mousai videotrimmer

#all the flatpaks
echo -ne "
other program pkgs ?
discord steam anydesk(remove from startup and do the security) atom (grub-customizer) firefox chromium obs-sudio vivaldi

alacritty kitty cool-retro-term
gparted
ghostwritter

"


#check startjobs from systemd


#https://github.com/Antynea/grub-btrfs
#check os-prober


#is there a way to see output in the terminal and put it in a log too ?
#yes using script



}



brbinstall_flavoring_neobian_neobian () {
echo -ne "
==============================================================================
Running neobian
==============================================================================
"
ls
}


brbinstall_flavoring_neobian_run () {
  #stay like this for now
  brbinstall_flavoring_neobian_neobian
}
