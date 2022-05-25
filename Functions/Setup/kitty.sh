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
#https://github.com/kovidgoyal/kitty/issues/628
#generate kitty.conf in cli ?
mkdir -p ~/.config/kitty/
cd ~/.config/kitty/

#cp -vr /usr/share/doc/examples/kitty.conf ~/.config/kitty/kitty.conf

kitty +runpy "from kitty.config import commented_out_default_config as conf; print(conf());" > kitty.conf
}

brbinstall_setup_kitty_auto-theming-term() {
echo -ne "
==============================================================================
Kitty auto theming term
==============================================================================
"
cd ~/.config/kitty/

sed -i "s/.*D7DAE0.*/EEEEEC/g" kitty.conf
sed -i "s/.*color0.*/color0 #$1/g" kitty.conf

}
