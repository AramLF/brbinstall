#!/bin/bash

de_cinnamon_mod(){
echo -ne "
------------------------------------------------------------------------------
Cinnamon mod
------------------------------------------------------------------------------
"
#moding it later
}

de_cinnamon_sound(){
echo -ne "
------------------------------------------------------------------------------
Cinnamon sound settings
------------------------------------------------------------------------------
"
#https://superuser.com/questions/1006983/how-to-set-cinnamon-preferences-in-command-line
#https://gist.github.com/FZX/ab53cb635f16be3b9aa26385495c4115
##### Sound settings.
gsettings set org.cinnamon.sounds login-enabled false
gsettings set org.cinnamon.sounds logout-enabled false
gsettings set org.cinnamon.sounds switch-enabled false
gsettings set org.cinnamon.sounds tile-enabled false
}

de_cinnamon_set_background(){
echo -ne "
------------------------------------------------------------------------------
Cinnamon set background
------------------------------------------------------------------------------
"
  #gsettings set org.cinnamon.desktop.background picture-uri "file:////usr/share/backgrounds/linuxmint-una/aholmes_moraine_lake.jpg"
  gsettings set org.cinnamon.desktop.background picture-uri $1

}

de_cinnamon_set_gtk_theme(){
echo -ne "
------------------------------------------------------------------------------
Cinnamon set gtk theme
------------------------------------------------------------------------------
"
#gsettings set org.cinnamon.theme name Colloid-dark-compact
#gsettings set org.cinnamon.desktop.interface gtk-theme Colloid-dark-compact
#gsettings set org.cinnamon.desktop.wm.preferences theme Colloid-dark-compact
gsettings set org.cinnamon.theme name $1
gsettings set org.cinnamon.desktop.interface gtk-theme $1
gsettings set org.cinnamon.desktop.wm.preferences theme $1
}

de_cinnamon_set_icon_theme(){
echo -ne "
------------------------------------------------------------------------------
Cinnamon set icon theme
------------------------------------------------------------------------------
"
  #gsettings set org.cinnamon.desktop.interface icon-theme Fluent-dark
  gsettings set org.cinnamon.desktop.interface icon-theme $1

}
