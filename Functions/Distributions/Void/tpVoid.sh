#!/bin/bash


distrib_void_dependencies () {
  #later
  sudo $auto_pkg_installer git gcc wget curl unzip
}

distrib_void_kdevi(){
  sudo xbps-install -Syu
  sudo xbps-install -Sy git gcc wget curl unzip
  sudo $auto_pkg_installer open-vm-tools
  sudo $auto_pkg_installer wget perl sassc
  sudo $auto_pkg_installer kde5 kde5-baseapps kdegraphics-thumbnailers ffmpegthumbs
  sudo $auto_pkg_installer lxdm
  sudo $auto_pkg_installer lightdm gdm
  sudo $auto_pkg_installer void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
  sudo $auto_pkg_installer alsa-utils
  sudo $auto_pkg_installer NetworkManager

  sudo $auto_pkg_installer firefox falkon


  sudo $auto_pkg_installer gnome gnome-apps mesa-dri xdg-user-dirs
  sudo ln -s /etc/sv/NetworkManager /var/service/
  sudo ln -s /etc/sv/gdm /var/service/
  sudo ln -s /etc/sv/dbus /var/service/


  #sudo vmtoolsd

  sudo sv status /var/service/*
  sudo ln -s /etc/sv/dbus /var/service/
  sudo ln -s /etc/sv/alsa /var/service/
  sudo ln -s /etc/sv/NetworkManager /var/service/
  sudo sv status /var/service/*

  sudo mkdir -p /etc/xbps.d
  sudo cp /usr/share/xbps.d/*-repository-*.conf /etc/xbps.d/
  sudo sed -i 's|https://alpha.de.repo.voidlinux.org|https://voidlinux.mirror.garr.it/|g' /etc/xbps.d/*-repository-*.conf
  sudo xbps-install -S

}
