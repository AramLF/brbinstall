#!/bin/bash

flavoring_grey_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Grey
------------------------------------------------------------------------------
"

theming_dependencies_global

theming_gtk_orchis

theming_gtk_graphite

flavoring_grey_de

theming_icon_papirus

theming_icon_numix_both

theming_wallpaper_graphite

theming_terminal_ps1

}

flavoring_grey_de(){
  if check_command plasma-desktop; then
    #not ready

    #theming_kde_vimix

    #theming_kde_materia

    theming_konsole_all
  fi

}
