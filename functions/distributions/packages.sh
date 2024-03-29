#!/bin/bash
function check_command() {
  command -v $1 > /dev/null
}

brbinstall_distrib_package_manager() {
  #sudo $auto_pkg_installer htop
  if check_command apt-get; then
    auto_pkg_installer='apt-get install -y'
    if check_command nala; then
      auto_pkg_installer='nala install -y'
    fi
  elif check_command dnf; then
    auto_pkg_installer='dnf install -y'
  elif check_command zypper; then
    auto_pkg_installer='zypper install -y --no-recommends'
  elif check_command pacman; then
    auto_pkg_installer='pacman -Sy --noconfirm'
  elif check_command xbps-install; then
    auto_pkg_installer='xbps-install -Sy'
  elif check_command apk; then
    auto_pkg_installer='apk add'
  fi
}
