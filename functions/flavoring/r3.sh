#!/bin/bash

brbinstall_flavoring_r3_script () {
echo -ne "
==================================brbinstall==================================
r3 for i3
==============================================================================
"
ls -l

}

brbinstall_flavoring_r3_other-programs () {
echo -ne "
==================================brbinstall==================================
r3 utilities
==============================================================================
"
sudo $auto_pkg_installer pavucontrol lxappearance

}

brbinstall_flavoring_r3_pad () {
echo -ne "
==================================brbinstall==================================
r3 pad
==============================================================================
"
#xinput
#xinput list-props "SynPS/2 Synaptics TouchPad"
#xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1

#echo "" >> ~/.config/i3/config
echo -ne "
exec xinput set-prop \"SynPS/2 Synaptics TouchPad\" \"libinput Tapping Enabled\" 1
"
}

brbinstall_flavoring_r3_gaps () {
echo -ne "
==================================brbinstall==================================
r3 creating gaps configuration
==============================================================================
"
echo -ne "
#gaps with i3-gaps
for_window [class=\".*\"] border pixel 2

gaps inner 5
gaps outer 5

#smart_gaps on
smart_borders on
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_feh-wall () {
echo -ne "
==================================brbinstall==================================
r3 feh and wallpaper
==============================================================================
"
sudo $auto_pkg_installer feh

echo -ne "
#wallpaper
exec_always feh --bg-scale $1
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_picomed () {
echo -ne "
==================================brbinstall==================================
r3 picom
==============================================================================
"
#to change in setup : sudo $auto_pkg_installer picom
#not complete
#compton for an old picom
echo -ne "
#transparancy
exec_always picom -f --config ~/.config/picom/picom.conf
" >> ~/.config/i3/config
#--config ~/.config/picom/picom.conf
#--blur-background
}

brbinstall_flavoring_r3_client-colors () {
echo -ne "
==================================brbinstall==================================
r3 client colors
==============================================================================
"
echo -ne "
#setting some colors
set \$bg-color 	         #2f343f
set \$inactive-bg-color   #2f343f
set \$text-color          #f3f4f5
set \$inactive-text-color #676E7D
set \$urgent-bg-color     #E53935

# window colors
#                       border              background         text                 indicator
client.focused          \$bg-color           \$bg-color          \$text-color          #00ff00
client.unfocused        \$inactive-bg-color \$inactive-bg-color \$inactive-text-color #00ff00
client.focused_inactive \$inactive-bg-color \$inactive-bg-color \$inactive-text-color #00ff00
client.urgent           \$urgent-bg-color    \$urgent-bg-color   \$text-color          #00ff00
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_i3-lock () {
echo -ne "
==================================brbinstall==================================
r3 setting i3-lock
==============================================================================
"
echo -ne "
#i3-lock
bindsym \$mod+shift+x exec i3lock --color \"\$bg-color\"
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_polybar () {
echo -ne "
==================================brbinstall==================================
r3 setting polybar
==============================================================================
"
#exec_always --no-startup-id $HOME/.config/polybar/launch.sh
echo -ne "
# Polybar Launch Script
exec_always --no-startup-id $HOME/.config/polybar/launch.sh
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_remove-i3bar () {
echo -ne "
==================================brbinstall==================================
r3 remove i3bar
==============================================================================
"
sed -i "s/bar {
        status_command i3status
}/#bar {
#        status_command i3status
#}/g" ~/.config/i3/config

}

brbinstall_flavoring_r3_replace-term () {
echo -ne "
==================================brbinstall==================================
r3 replace the terminal
==============================================================================
"
sed -i "s/i3-sensible-terminal/$1/g" ~/.config/i3/config

}

brbinstall_flavoring_r3_rofi () {
echo -ne "
==================================brbinstall==================================
r3 rofi
==============================================================================
"
#bindsym $mod+x exec rofi -show run -lines 3 -eh 2 -width 100 -padding 800 -opacity "85" -bw 0 -bc "$bg-color" -bg "$bg-color" -fg "$text-color" -hlbg "$bg-color" -hlfg "#9575cd" -font "System San Francisco Display 18"
echo -ne "
#rofi
bindsym \$mod+x exec rofi -show drun
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_i3-lock () {
echo -ne "
==================================brbinstall==================================
r3 rofi
==============================================================================
"
#bindsym $mod+shift+x exec i3lock --color "$bg-color"
echo -ne "
#i3-lock
bindsym \$mod+shift+x exec i3lock
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_keyboard-layout () {
echo -ne "
==================================brbinstall==================================
r3 keyboard layout fr and us
==============================================================================
"
#exec_always --no-startup-id "setxkbmap -model pc105 -layout us,ru -variant ,phonetic_winkeys -option grp:alt_shift_toggle,compose:ralt"
#exec "setxkbmap -option 'grp:alt_shift_toggle' -layout us,cz -variant ,qwerty"
echo -ne "
#Keyboard layout fr and us with alt shift
exec \"setxkbmap -option 'grp:alt_shift_toggle' -layout fr,us\"
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_setting-up () {
echo -ne "
==================================brbinstall==================================
r3 setting-up everything ?
==============================================================================
"
#install i3-gaps and this flavor is far from being finished

brbinstall_flavoring_r3_other-programs

brbinstall_flavoring_r3_gaps

brbinstall_flavoring_r3_pad

brbinstall_flavoring_r3_keyboard-layout

brbinstall_setup_kitty_setting-up

brbinstall_flavoring_r3_replace-term "kitty"

brbinstall_setup_polybar_setting-up

brbinstall_flavoring_r3_polybar

brbinstall_setup_picom_setting-up

brbinstall_flavoring_r3_picomed

brbinstall_setup_rofi_start

brbinstall_flavoring_r3_rofi

brbinstall_theming_fonts_all

brbinstall_theming_wallpaper_all

echo -ne "
#Remaining :

#The kitty theme :
brbinstall_theming_kitty_set-*
#The kitty font in ~/.config/kitty/
#Fira Mono Medium

#The polybar theme :
brbinstall_theming_polybar_set-*
#The polybar font in ~/.config/polybar/
#Fira Mono Medium

#Do not forget to remove i3bar

#The wallpaper with this command :
brbinstall_flavoring_r3_feh-wall \"/usr/share/backgrounds/walls/\"

#Might restart or use Super+Alt+r
"
}
