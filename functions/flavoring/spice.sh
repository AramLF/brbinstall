#!/bin/bash

brbinstall_flavoring_spice_script () {
echo -ne "
==============================================================================
flavor Spice
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_matcha

if check_command plasmashell; then
  brbinstall_theming_kde_materia

  brbinstall_theming_kde-misc_color-schemes-all

  brbinstall_theming_kde-misc_konsole-all

  brbinstall_theming_kde-misc_aurorae-all
fi

brbinstall_theming_icon_fluent "red"

brbinstall_theming_wallpaper_all

brbinstall_theming_terminal_ps1

}
