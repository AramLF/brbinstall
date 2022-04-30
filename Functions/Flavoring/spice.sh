#!/bin/bash

brbinstall_flavoring_spice_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Spice
------------------------------------------------------------------------------
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_matcha

brbinstall_flavoring_spice_de

#brbinstall_theming_icon_numix_both

#brbinstall_theming_wallpaper_spacenord

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_spice_de(){
  if check_command plasmashell; then
    brbinstall_theming_kde_materia

    brbinstall_theming_kde_catppuccin

    brbinstall_theming_kde_fluent

    brbinstall_theming_konsole_all
  fi

}
