#!/bin/bash

brbinstall_flavoring_vimi_script () {
echo -ne "
==============================================================================
flavor Vimi
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_vimix

if check_command plasmashell; then
  brbinstall_theming_kde_vimix

  brbinstall_theming_kde_materia

  brbinstall_theming_kde-misc_konsole-all
fi

brbinstall_theming_icon_tela

brbinstall_theming_icon_tela-circle

brbinstall_theming_wallpaper_all

brbinstall_theming_terminal_ps1

}
