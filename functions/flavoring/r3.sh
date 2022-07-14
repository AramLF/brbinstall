#!/bin/bash

brbinstall_flavoring_r3_script () {
echo -ne "
==============================================================================
r3 for i3
==============================================================================
"
ls -l

}

brbinstall_flavoring_r3_pad () {
echo -ne "
==============================================================================
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
==============================================================================
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
==============================================================================
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
==============================================================================
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
==============================================================================
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
==============================================================================
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
==============================================================================
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
==============================================================================
r3 remove i3bar
==============================================================================
"
sed -i "s/bar {
        status_command i3status
}/#bar {
#        status_command i3status
#}/g" ~/.config/i3/config

}

brbinstall_flavoring_r3_rofi () {
echo -ne "
==============================================================================
r3 rofi
==============================================================================
"
#bindsym $mod+x exec rofi -show run -lines 3 -eh 2 -width 100 -padding 800 -opacity "85" -bw 0 -bc "$bg-color" -bg "$bg-color" -fg "$text-color" -hlbg "$bg-color" -hlfg "#9575cd" -font "System San Francisco Display 18"
echo -ne "
#rofi
bindsym \$mod+x exec rofi -show run
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_i3-lock () {
echo -ne "
==============================================================================
r3 rofi
==============================================================================
"
#bindsym $mod+shift+x exec i3lock --color "$bg-color"
echo -ne "
#i3-lock
bindsym \$mod+shift+x exec i3lock
" >> ~/.config/i3/config

}
