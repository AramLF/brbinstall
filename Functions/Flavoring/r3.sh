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
for_window [class=\".*\"] border pixel 2

gaps inner 10
gaps outer 10

smart_gaps on
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
exec_always feh --bg-scale $1
" >> ~/.config/i3/config

}

brbinstall_flavoring_r3_picomed () {
echo -ne "
==============================================================================
r3 picom
==============================================================================
"
sudo $auto_pkg_installer picom
#not complete
echo -ne "
exec_always picom -f
" >> ~/.config/i3/config
#--config ~/.config/picom/picom.conf
#--blur-background
}

brbinstall_flavoring_r3_not_yet () {
echo -ne "
==============================================================================
r3 for i3 not rdy yet
==============================================================================
"
#none for now
echo -ne "

gaps inner 10
gaps outer 10

smart_gaps on

for_window [class=\".*\"] border pixel 0

set \$bg-color 	         #2f343f
set \$inactive-bg-color   #2f343f
set \$text-color          #f3f4f5
set \$inactive-text-color #676E7D
set \$urgent-bg-color     #E53935

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
#bar {
#	position top
#       status_command polybar example
#	colors {
#		background \$bg-color
#	    	separator #757575
#		#                  border             background         text
#		focused_workspace  \$bg-color          \$bg-color          \$text-color
#		inactive_workspace \$inactive-bg-color \$inactive-bg-color \$inactive-text-color
#		urgent_workspace   \$urgent-bg-color   \$urgent-bg-color   \$text-color
#	}
#}

exec polybar example

exec_always picom -f --config ~/.config/picom/picom.conf
"
}


brbinstall_flavoring_r3_not_yet_2 () {
echo -ne "
==============================================================================
r3 for i3 not rdy yet 2
==============================================================================
"

echo -ne "
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

hide_edge_borders both

gaps inner 10
gaps outer 10

smart_gaps on

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        status_command i3blocks -c ~/.config/i3/i3blocks.conf
        position top
        colors {
		background \$bg-color
	    	separator #757575
		#                  border             background         text
		focused_workspace  \$bg-color          \$bg-color          \$text-color
		inactive_workspace \$inactive-bg-color \$inactive-bg-color \$inactive-text-color
		urgent_workspace   \$urgent-bg-color   \$urgent-bg-color   \$text-color
	}
}


bindsym \$mod+shift+x exec i3lock --color \"\$bg-color\"
bindsym \$mod+x exec rofi -show run -lines 3 -eh 2 -width 100 -padding 800 -opacity \"85\" -bw 0 -bc \"\$bg-color\" -bg \"\$bg-color\" -fg \"\$text-color\" -hlbg \"\$bg-color\" -hlfg \"#9575cd\" -font \"System San Francisco Display 18\"


#wallpaper
exec_always feh --bg-scale /home/ame/Téléchargements/MK1x2W6mZzOMGcPjjTuiUPc9NskaV_eYZf959Bvm7DA.png

#transparancy
exec_always compton -f

"

}
