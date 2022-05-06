#!/bin/bash

brbinstall_flavoring_vimi_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Vimi
------------------------------------------------------------------------------
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_vimix

brbinstall_flavoring_vimi_de

brbinstall_theming_icon_tela

brbinstall_theming_icon_tela_circle

brbinstall_theming_wallpaper_graphite

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_vimi_de(){
  if check_command plasmashell; then
    brbinstall_theming_kde_vimix

    brbinstall_theming_kde_materia

    brbinstall_theming_kde-misc_konsole_all
  fi

}
