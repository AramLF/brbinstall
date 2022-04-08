#!/bin/bash

flavoring_matte_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Matte
------------------------------------------------------------------------------
"

theming_dependencies_global

theming_gtk_matcha

flavoring_matte_de

theming_icon_numix_both

theming_wallpaper_spacenord

theming_terminal_ps1

}

flavoring_matte_de(){
  if check_command plasmashell; then
    theming_kde_materia

    theming_kde_catppuccin

    theming_konsole_all
  fi

}
