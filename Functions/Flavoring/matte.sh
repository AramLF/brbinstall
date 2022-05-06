#!/bin/bash

brbinstall_flavoring_matte_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Matte
------------------------------------------------------------------------------
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_matcha

brbinstall_flavoring_matte_de

brbinstall_theming_icon_numix_both

brbinstall_theming_wallpaper_spacenord

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_matte_de(){
  if check_command plasmashell; then
    brbinstall_theming_gtk_catppuccin

    brbinstall_theming_kde_materia

    brbinstall_theming_kde_catppuccin

    brbinstall_theming_kde-misc_konsole_all
  fi

}
