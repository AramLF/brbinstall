#!/bin/bash
function check_command() {
  command -v $1 > /dev/null
}

distrib_package_manager() {
  #sudo $auto_pkg_installer htop
  if check_command apt-get; then
    auto_pkg_installer='apt-get install -y'
  elif check_command dnf; then
    auto_pkg_installer='dnf install -y'
  elif check_command zypper; then
    auto_pkg_installer='zypper install -y'
  elif check_command pacman; then
    auto_pkg_installer='pacman -Sy --noconfirm'
  elif check_command xbps-install; then
    auto_pkg_installer='xbps-install -Sy'
  fi
}
