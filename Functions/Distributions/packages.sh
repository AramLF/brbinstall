#!/bin/bash
function check-command() {
  command -v $1 > /dev/null
}

manage-package-installer() {
  #sudo $auto_pkg_installer htop
  if check-command apt-get; then
    auto_pkg_installer='apt-get install -y'
  elif check-command dnf; then
    auto_pkg_installer='dnf install -y'
  elif check-command zypper; then
    auto_pkg_installer='zypper install -y'
  elif check-command pacman; then
    auto_pkg_installer='pacman -Sy --noconfirm'
  elif check-command xbps-install; then
    auto_pkg_installer='xbps-install -Sy'
  fi
}
