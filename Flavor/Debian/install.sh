#!/bin/bash
cd ../../
source ./scriptSource.sh

brbinstall_template_tp1_title

brbinstall_distrib_debian-based_version

brbinstall_template_tp1_start

brbinstall_distrib_debian-based_dependencies

brbinstall_theming_icon_papirus

brbinstall_theming_wallpaper_all

brbinstall_theming_gtk_catppuccin

brbinstall_theming_gterminal_set_catppuccin

brbinstall_de_gnome_del_gnome_software_startup

brbinstall_de_gnome_set_gdm_tools

brbinstall_de_gnome_set_icon_theme

brbinstall_de_gnome_set_gtk_theme

brbinstall_de_gnome_set_wallpaper

brbinstall_distrib_debian-based_prompt

brbinstall_distrib_debian-based_plymouth

brbinstall_distrib_debian-based_cnf

brbinstall_template_tp1_end
