#!/bin/bash

brbinstall_flavoring_catp_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Catp
------------------------------------------------------------------------------
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_catppuccin

brbinstall_flavoring_catp_de

brbinstall_theming_icon_papirus

brbinstall_theming_wallpaper_evening

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_catp_de(){
  if check_command plasmashell; then
    brbinstall_theming_konsole_all
  elif check_command gnome-terminal; then
    brbinstall_theming_gterminal_set_catppuccin
  fi

}
