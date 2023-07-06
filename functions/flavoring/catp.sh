#!/bin/bash

brbinstall_flavoring_catp_script () {
echo -ne "
==============================================================================
flavor Catp
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_catppuccin

if check_command plasmashell; then
  brbinstall_theming_kde-misc_konsole-all
elif check_command gnome-terminal; then
  brbinstall_theming_gterminal_set-catppuccin
fi

brbinstall_theming_icon_papirus

brbinstall_theming_wallpaper_all

brbinstall_theming_terminal_ps1

}
