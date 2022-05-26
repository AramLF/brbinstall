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

sed -i "s/.*color0 .*/color0 #$1/g" kitty.conf
sed -i "s/.*color1 .*/color1 #$2/g" kitty.conf
sed -i "s/.*color2 .*/color2  #$3/g" kitty.conf
sed -i "s/.*color3 .*/color3  #$4/g" kitty.conf
sed -i "s/.*color4 .*/color4  #$5/g" kitty.conf
sed -i "s/.*color5 .*/color5  #$6/g" kitty.conf
sed -i "s/.*color6 .*/color6  #$7/g" kitty.conf
sed -i "s/.*color7 .*/color7  #$8/g" kitty.conf
sed -i "s/.*color8 .*/color8 #$9/g" kitty.conf
sed -i "s/.*color9 .*/color9 #${10}/g" kitty.conf
sed -i "s/.*color10 .*/color10 #${11}/g" kitty.conf
sed -i "s/.*color11 .*/color11 #${12}/g" kitty.conf
sed -i "s/.*color12 .*/color12 #${13}/g" kitty.conf
sed -i "s/.*color13 .*/color13 #${14}/g" kitty.conf
sed -i "s/.*color14 .*/color14 #${15}/g" kitty.conf
sed -i "s/.*color15 .*/color15 #${16}/g" kitty.conf

# color0 #000000
# color8 #767676

# color1 #cc0403
# color9 #f2201f

# color2  #19cb00
# color10 #23fd00

# color3  #cecb00
# color11 #fffd00

# color4  #0d73cc
# color12 #1a8fff

# color5  #cb1ed1
# color13 #fd28ff

# color6  #0dcdcd
# color14 #14ffff

# color7  #dddddd
# color15 #ffffff

}
