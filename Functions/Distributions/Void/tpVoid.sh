#!/bin/bash


distrib_void_dependencies () {
echo -ne "
------------------------------------------------------------------------------
Void add dependencies
------------------------------------------------------------------------------
"
  sudo $auto_pkg_installer git gcc wget curl unzip
}

distrib_void_mirror(){
echo -ne "
------------------------------------------------------------------------------
Void change mirror
------------------------------------------------------------------------------
"
  sudo mkdir -p /etc/xbps.d
  sudo cp /usr/share/xbps.d/*-repository-*.conf /etc/xbps.d/
  sudo sed -i 's|https://alpha.de.repo.voidlinux.org|https://voidlinux.mirror.garr.it/|g' /etc/xbps.d/*-repository-*.conf
  sudo xbps-install -Sy
}

distrib_void_tweaks(){
echo -ne "
------------------------------------------------------------------------------
Void add repositories
------------------------------------------------------------------------------
"
  sudo xbps-install -Syu
  sudo $auto_pkg_installer void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
  sudo xbps-install -Sy
}

distrib_void_more(){
echo -ne "
------------------------------------------------------------------------------
Void more pkgs
------------------------------------------------------------------------------
"
  sudo $auto_pkg_installer firefox
  sudo $auto_pkg_installer open-vm-tools
  sudo $auto_pkg_installer wget perl sassc
}

distrib_void_local-host-resolution(){
echo -ne "
------------------------------------------------------------------------------
Void Local Hostname Resolution
------------------------------------------------------------------------------
"
#https://wiki.archlinux.org/title/Network_configuration#Local_hostname_resolution
sed -i '/^# End of file/i 127.0.1.1		'"$theHostname"'' /etc/hosts
}

distrib_void_set-x-key-layout(){
echo -ne "
------------------------------------------------------------------------------
Void Set keyboard layout for Display Manager using xorg
------------------------------------------------------------------------------
"
#https://www.reddit.com/r/voidlinux/comments/e547cl/login_manager_keyboard_layout_always_in_qwerty/
#https://forums.archlinux.fr/viewtopic.php?t=21445
#lightdm sddm lxdm
sudo mkdir -p /usr/share/X11/xorg.conf.d/ -v
sudo cp $initialPath/Dotfiles/void/00-keyboard.conf /usr/share/X11/xorg.conf.d/00-keyboard.conf -v
}

distrib_void_gnome(){
echo -ne "
------------------------------------------------------------------------------
Void gnome installation
------------------------------------------------------------------------------
"
  sudo $auto_pkg_installer gnome gnome-apps mesa-dri xdg-user-dirs

  sudo ln -s /etc/sv/gdm /var/service/
}

distrib_void_kde(){
echo -ne "
------------------------------------------------------------------------------
Void kde installation
------------------------------------------------------------------------------
"
  sudo $auto_pkg_installer kde5 kde5-baseapps kdegraphics-thumbnailers ffmpegthumbs
  sudo $auto_pkg_installer falkon pulseaudio gwenview
  sudo $auto_pkg_installer mesa-dri xdg-user-dirs
  sudo $auto_pkg_installer sddm xorg

  distrib_void_set-x-key-layout

  sudo ln -s /etc/sv/sddm /var/service/
}

distrib_void_xfce(){
echo -ne "
------------------------------------------------------------------------------
Void xfce installation
------------------------------------------------------------------------------
"
  sudo $auto_pkg_installer xfce4

  sudo $auto_pkg_installer lxdm
  sudo $auto_pkg_installer lightdm gdm

  sudo $auto_pkg_installer alsa-utils
  sudo $auto_pkg_installer NetworkManager

  sudo $auto_pkg_installer xfce4-pulseaudio-plugin xfce4-xkb-plugin

  distrib_void_set-x-key-layout
}

distrib_void_enable_services(){
echo -ne "
------------------------------------------------------------------------------
Void enabling services
------------------------------------------------------------------------------
"
  #sudo vmtoolsd
  sudo sv status /var/service/*

  sudo ln -s /etc/sv/NetworkManager /var/service/
  sudo ln -s /etc/sv/dbus /var/service/
  #sudo ln -s /etc/sv/alsa /var/service/

  sudo sv status /var/service/*
}

distrib_void_choices(){
echo -ne "
------------------------------------------------------------------------------
Void choices
------------------------------------------------------------------------------
"
  echo "What Desktop Environnment do you want ?"
  echo "1 for KDE"
  echo "2 for Gnome"
  read -r -p "Press the number then press Enter " voidDE

  if [ $voidDE = "1" ]
  then
    echo "Kde selected"
  elif [ $voidDE = "2" ]
  then
    echo "Gnome selected"
  else
    echo "exiting please choose a DE";
    exit 1;
  fi

}

distrib_void_de_choice(){
  if [ $voidDE = "1" ]
  then
    distrib_void_kde;
  elif [ $voidDE = "2" ]
  then
    distrib_void_gnome;
  fi
}

distrib_void_flavor(){

  distrib_void_choices

  distrib_void_mirror

  distrib_void_tweaks

  distrib_void_mirror

  distrib_void_local-host-resolution

  distrib_void_dependencies

  distrib_void_more

  distrib_void_de_choice

  distrib_void_enable_services

}
