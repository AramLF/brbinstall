#!/bin/bash
cd ../../
source ./scriptSource.sh

templace_tp1_title

distrib_debian_version

templace_tp1_start

distrib_debian_dependencies

theming_icon_papirus

theming_wallpaper_evening

theming_gtk_catppuccin

theming_gterminal_set_catppuccin

de_gnome_del_gnome_software_startup

de_gnome_set_gdm_tools

de_gnome_set_icon_theme

de_gnome_set_gtk_theme

de_gnome_set_wallpaper

distrib_debian_prompt

distrib_debian_plymouth

distrib_debian_cnf

templace_tp1_end
