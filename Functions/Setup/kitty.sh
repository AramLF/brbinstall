#!/bin/bash

brbinstall_setup_kitty_start() {
echo -ne "
==============================================================================
Kitty
==============================================================================
"
sudo $auto_pkg_installer kitty
}

brbinstall_setup_kitty_personal-conf() {
echo -ne "
==============================================================================
Kitty personal conf
==============================================================================
"
mkdir -p ~/.config/kitty/
cp -vr /usr/share/doc/examples/kitty.conf ~/.config/kitty/kitty.conf
}

brbinstall_setup_kitty_auto-theming-term() {
echo -ne "
==============================================================================
Kitty auto theming term
==============================================================================
"

}
