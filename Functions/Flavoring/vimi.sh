#!/bin/bash

flavoring_vimi_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Vimi
------------------------------------------------------------------------------
"

theming_dependencies_global

theming_gtk_vimix

flavoring_vimi_de

theming_icon_tela

theming_icon_tela_circle

theming_wallpaper_graphite

theming_terminal_ps1

}

flavoring_vimi_de(){
  if check_command plasmashell; then
    theming_kde_vimix

    theming_kde_materia

    theming_konsole_all
  fi

}
