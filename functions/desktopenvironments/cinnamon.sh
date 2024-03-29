#!/bin/bash

brbinstall_de_cinnamon_mod(){
echo -ne "
==================================brbinstall==================================
Cinnamon mod
==============================================================================
"
#moding it later
#gsettings list-recursively |grep icon
#gsettings list-schemas |grep touchpad
}

brbinstall_de_cinnamon_sound(){
echo -ne "
==================================brbinstall==================================
Cinnamon sound settings
==============================================================================
"
#https://superuser.com/questions/1006983/how-to-set-cinnamon-preferences-in-command-line
#https://gist.github.com/FZX/ab53cb635f16be3b9aa26385495c4115
##### Sound settings.
gsettings set org.cinnamon.sounds login-enabled false
gsettings set org.cinnamon.sounds logout-enabled false
gsettings set org.cinnamon.sounds switch-enabled false
gsettings set org.cinnamon.sounds tile-enabled false
}

brbinstall_de_cinnamon_set-background(){
echo -ne "
==================================brbinstall==================================
Cinnamon set background
==============================================================================
"
  #gsettings set org.cinnamon.desktop.background picture-uri "file:////usr/share/backgrounds/linuxmint-una/example.jpg"
  gsettings set org.cinnamon.desktop.background picture-uri $1

}

brbinstall_de_cinnamon_set-desktop-theme(){
echo -ne "
==================================brbinstall==================================
Cinnamon set desktop theme
==============================================================================
"
#gsettings set org.cinnamon.theme name Fluent-round-dark-compact
gsettings set org.cinnamon.theme name $1
}

brbinstall_de_cinnamon_set-gtk-theme(){
echo -ne "
==================================brbinstall==================================
Cinnamon set gtk theme
==============================================================================
"
  #gsettings set org.cinnamon.desktop.interface gtk-theme Fluent-round-dark-compact
  gsettings set org.cinnamon.desktop.interface gtk-theme $1
}

brbinstall_de_cinnamon_set-wm-theme(){
echo -ne "
==================================brbinstall==================================
Cinnamon set wm theme
==============================================================================
"
  #gsettings set org.cinnamon.desktop.wm.preferences theme Fluent-round-dark
  gsettings set org.cinnamon.desktop.wm.preferences theme $1

}

brbinstall_de_cinnamon_set-icon-theme(){
echo -ne "
==================================brbinstall==================================
Cinnamon set icon theme
==============================================================================
"
  #gsettings set org.cinnamon.desktop.interface icon-theme Fluent-dark
  gsettings set org.cinnamon.desktop.interface icon-theme $1

}

brbinstall_de_cinnamon_set-monospace-font(){
echo -ne "
==================================brbinstall==================================
Cinnamon set monospace font name
==============================================================================
"
  #gsettings set org.gnome.desktop.interface monospace-font-name "Ubuntu Mono 12"
  gsettings set org.gnome.desktop.interface monospace-font-name "$1"

}

brbinstall_de_cinnamon_set-displayed-icons(){
echo -ne "
==================================brbinstall==================================
Cinnamon set displayed icons
==============================================================================
"
  #gsettings set org.gnome.desktop.interface monospace-font-name "Ubuntu Mono 12"
  gsettings set org.nemo.desktop network-icon-visible false
  gsettings set org.nemo.desktop computer-icon-visible true
  gsettings set org.nemo.desktop show-desktop-icons true
  gsettings set org.nemo.desktop home-icon-visible true
  gsettings set org.nemo.desktop show-orphaned-desktop-icons true
  gsettings set org.nemo.desktop trash-icon-visible true


}

brbinstall_de_cinnamon_set-tap-to-click(){
echo -ne "
==================================brbinstall==================================
Cinnamon set true tap-to-click
==============================================================================
"
  #gsettings set org.cinnamon.desktop.peripherals.touchpad tap-to-click true
  gsettings set org.cinnamon.desktop.peripherals.touchpad tap-to-click true

}

brbinstall_de_cinnamon_set-flags-keyboard-layout(){
echo -ne "
==================================brbinstall==================================
Cinnamon set false to layout flags
==============================================================================
"
  #gsettings set org.cinnamon.desktop.interface keyboard-layout-show-flags false
  gsettings set org.cinnamon.desktop.interface keyboard-layout-show-flags false

}

brbinstall_de_cinnamon_set-links-in-nemo(){
echo -ne "
==================================brbinstall==================================
Cinnamon set true to create links in nemo
==============================================================================
"
  gsettings set org.nemo.preferences.menu-config selection-menu-make-link true

}

brbinstall_de_cinnamon_set-icon-view-nemo(){
echo -ne "
==================================brbinstall==================================
Cinnamon set small size in nemo
==============================================================================
"
  #gsettings set org.nemo.icon-view default-zoom-level "standard"
  gsettings set org.nemo.icon-view default-zoom-level "small"

}
