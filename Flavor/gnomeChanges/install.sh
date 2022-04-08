#!/bin/bash
cd ../../
source ./scriptSource.sh

template_tp1_title

template_tp1_start

de_gnome_add_dependencies

de_gnome_del_gnome_software_startup

de_gnome_set_gdm_tools

#de_gnome_set_icon_theme

template_tp1_end
