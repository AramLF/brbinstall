#!/bin/bash

brbinstall_distrib_deb-based_ubuntu-based_more () {
echo -ne "
==============================================================================
Ubuntu Based pkgs
==============================================================================
"
#mostly for 22.04
sudo $auto_pkg_installer nala
sudo $auto_pkg_installer libc6-dev
}
