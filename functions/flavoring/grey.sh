#!/bin/bash

brbinstall_flavoring_grey_script () {
echo -ne "
==============================================================================
flavor Grey
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_orchis

brbinstall_theming_gtk_graphite

if check_command plasmashell; then
  #not ready

  #brbinstall_theming_kde_vimix

  #brbinstall_theming_kde_materia

  brbinstall_theming_kde-misc_konsole-all
fi

brbinstall_theming_icon_papirus

brbinstall_theming_icon_numix-both

brbinstall_theming_wallpaper_all

brbinstall_theming_terminal_ps1

}
