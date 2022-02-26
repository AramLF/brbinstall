#!/bin/bash
function check-command() {
  command -v $1 > /dev/null
}

manage-package-installer() {
  #sudo $auto_pkg_installer htop
  if check-command apt-get; then
    auto_pkg_installer='apt-get -y install'
  elif check-command dnf; then
    auto_pkg_installer='dnf -y install'
  elif check-command zypper; then
    auto_pkg_installer='zypper in'
  elif check-command pacman; then
    auto_pkg_installer='pacman -Sy --noconfirm'
  elif check-command xbps-install; then
    auto_pkg_installer='xbps-install'
  fi
}
