#!/bin/bash

brbinstall_setup_rofi_start() {
echo -ne "
==================================brbinstall==================================
Rofi installation
==============================================================================
"
sudo $auto_pkg_installer rofi
}
