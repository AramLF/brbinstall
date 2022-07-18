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

sed -i "s/.* background #.*/ background #${17}/g" kitty.conf
sed -i "s/.* foreground #.*/ foreground #${18}/g" kitty.conf

}

brbinstall_setup_kitty_auto-theming-highlight() {
echo -ne "
==============================================================================
Kitty theming highlight
==============================================================================
"
cd ~/.config/kitty/

sed -i "s/.* selection_background #.*/selection_background $1/g" kitty.conf
sed -i "s/.* selection_foreground #.*/selection_foreground $2/g" kitty.conf

sed -i "s/.* cursor #.*/cursor $3/g" kitty.conf
sed -i "s/.* cursor_text_color #.*/cursor_text_color $4/g" kitty.conf
}

brbinstall_setup_kitty_px() {
echo -ne "
==============================================================================
Kitty px
==============================================================================
"
cd ~/.config/kitty/

sed -i "s/.*# font_size.*/font_size 10.0/g" kitty.conf

#sed -i "s/change_font_size all +2.0.*/change_font_size all +1.0/g" kitty.conf

#sed -i "s/change_font_size all -2.0.*/change_font_size all -1.0/g" kitty.conf

sed -i "s/.*map kitty_mod+equal  change_font_size all.*/map kitty_mod+equal  change_font_size all +1.0/g" kitty.conf
sed -i "s/.*map kitty_mod+plus   change_font_size all.*/map kitty_mod+plus   change_font_size all +1.0/g" kitty.conf
sed -i "s/.*map kitty_mod+kp_add change_font_size all.*/map kitty_mod+kp_add change_font_size all +1.0/g" kitty.conf
sed -i "s/.*map cmd+plus         change_font_size all.*/map cmd+plus         change_font_size all +1.0/g" kitty.conf
sed -i "s/.*map cmd+equal        change_font_size all.*/map cmd+equal        change_font_size all +1.0/g" kitty.conf
sed -i "s/.*map shift+cmd+equal  change_font_size all.*/map shift+cmd+equal  change_font_size all +1.0/g" kitty.conf

sed -i "s/.*map kitty_mod+minus       change_font_size all.*/map kitty_mod+minus       change_font_size all -1.0/g" kitty.conf
sed -i "s/.*map kitty_mod+kp_subtract change_font_size all.*/map kitty_mod+kp_subtract change_font_size all -1.0/g" kitty.conf
sed -i "s/.*map cmd+minus             change_font_size all.*/map cmd+minus             change_font_size all -1.0/g" kitty.conf
sed -i "s/.*map shift+cmd+minus       change_font_size all.*/map shift+cmd+minus       change_font_size all -1.0/g" kitty.conf

}

brbinstall_setup_kitty_background-opacity() {
echo -ne "
==============================================================================
Kitty background opacity
==============================================================================
"
cd ~/.config/kitty/

sed -i "s/.*# background_opacity 1.0.*/background_opacity $1/g" kitty.conf


}
