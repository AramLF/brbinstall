#!/bin/bash

brbinstall_flavoring_grey_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Grey
------------------------------------------------------------------------------
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_orchis

brbinstall_theming_gtk_graphite

brbinstall_flavoring_grey_de

brbinstall_theming_icon_papirus

brbinstall_theming_icon_numix_both

brbinstall_theming_wallpaper_graphite

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_grey_de(){
  if check_command plasmashell; then
    #not ready

    #brbinstall_theming_kde_vimix

    #brbinstall_theming_kde_materia

    brbinstall_theming_konsole_all
  fi

}
