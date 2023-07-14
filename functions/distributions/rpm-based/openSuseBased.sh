#!/bin/bash

brbinstall_distrib_rpm-based_opensuse-based_dependencies () {
echo -ne "
==================================brbinstall==================================
openSuse based
==============================================================================
"
#none for now
}


brbinstall_distrib_rpm-based_opensuse-based_rand () {
echo -ne "
==================================brbinstall==================================
openSuse based
==============================================================================
"
#lack of input touchpad for xorg :
sudo $auto_pkg_installer xf86-input-synaptic

#wayland touchpad input back after 2nd reboot

}
