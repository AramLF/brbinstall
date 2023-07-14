#!/bin/bash

brbinstall_setup_start_basic-apps () {
echo -ne "
==================================brbinstall==================================
Add basic apps
==============================================================================
"
sudo $auto_pkg_installer htop neofetch ncdu git gcc wget curl unzip ranger tree
}
