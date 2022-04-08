#!/bin/bash

flavoring_catp_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Catp
------------------------------------------------------------------------------
"

theming_dependencies_global

theming_gtk_catppuccin

flavoring_catp_de

theming_icon_papirus

theming_wallpaper_evening

theming_terminal_ps1

}

flavoring_catp_de(){
  if check_command plasmashell; then
    theming_konsole_all
  elif check_command gnome-terminal; then
    theming_gterminal_set_catppuccin
  fi

}
