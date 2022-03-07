#!/bin/bash


distrib_void_dependencies () {
  
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
  sudo xbps-install -Syu
  sudo $auto_pkg_installer void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
  sudo xbps-install -Sy
}

distrib_void_more(){
  sudo $auto_pkg_installer firefox
  sudo $auto_pkg_installer open-vm-tools
  sudo $auto_pkg_installer wget perl sassc
}

distrib_void_gnome(){
echo -ne "
------------------------------------------------------------------------------
Void gnome installation
------------------------------------------------------------------------------
"
  sudo $auto_pkg_installer gnome gnome-apps mesa-dri xdg-user-dirs
  sudo ln -s /etc/sv/NetworkManager /var/service/
  sudo ln -s /etc/sv/gdm /var/service/
  sudo ln -s /etc/sv/dbus /var/service/
}

distrib_void_kde(){
echo -ne "
------------------------------------------------------------------------------
Void kde installation
------------------------------------------------------------------------------
"
  sudo $auto_pkg_installer kde5 kde5-baseapps kdegraphics-thumbnailers ffmpegthumbs falkon
  sudo $auto_pkg_installer lxdm
  sudo $auto_pkg_installer lightdm gdm

  sudo $auto_pkg_installer alsa-utils
  sudo $auto_pkg_installer NetworkManager
}

distrib_void_xfce(){
echo -ne "
------------------------------------------------------------------------------
Void xfce installation
------------------------------------------------------------------------------
"
  sudo $auto_pkg_installer xfce4
}

distrib_void_enable_services(){
echo -ne "
------------------------------------------------------------------------------
Void enabling services
------------------------------------------------------------------------------
"
  #sudo vmtoolsd
  sudo sv status /var/service/*
  sudo ln -s /etc/sv/dbus /var/service/
  sudo ln -s /etc/sv/alsa /var/service/
  sudo ln -s /etc/sv/NetworkManager /var/service/
  sudo sv status /var/service/*
}
