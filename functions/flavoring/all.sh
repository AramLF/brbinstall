#!/bin/bash

brbinstall_flavoring_all_choice() {
echo -ne "
==============================================================================
flavoring choice
==============================================================================
"

#a new way of doing things (could be improved)
echo -ne "Choose the flavor to install :
across
catp
coll
flue
grey
matte
roll
spice
vimi
"
read -r -p "Select the flavor by typing it, [Enter] to validate : " flavChoice

brbinstall_flavoring_all_$flavChoice\_script

}

brbinstall_flavoring_all_across_script () {
echo -ne "
==============================================================================
flavor adwaitacross
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_adw-gtk3

brbinstall_theming_gtk_orchis

brbinstall_theming_icon_taru-yaru

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_all_catp_script () {
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

brbinstall_flavoring_all_coll_script () {
echo -ne "
==============================================================================
flavor Coll
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_colloid

if check_command plasmashell; then
  brbinstall_theming_kde_colloid

  brbinstall_theming_kde-misc_color-schemes-all

  brbinstall_theming_kde-misc_konsole-all
fi

brbinstall_theming_icon_colloid

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_all_flue_script () {
echo -ne "
==============================================================================
flavor Flue
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_fluent

if check_command plasmashell; then
  brbinstall_theming_kde_fluent

  brbinstall_theming_kde-misc_konsole-all
fi

brbinstall_theming_icon_fluent

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_all_grey_script () {
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

brbinstall_flavoring_all_matte_script () {
echo -ne "
==============================================================================
flavor Matte
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_matcha

if check_command plasmashell; then
  brbinstall_theming_gtk_catppuccin

  brbinstall_theming_kde_materia

  brbinstall_theming_kde_catppuccin

  brbinstall_theming_kde-misc_konsole-all
elif check_command gnome-terminal; then
  brbinstall_theming_gterminal_set-ende
fi

brbinstall_theming_icon_numix-both

brbinstall_theming_wallpaper_all

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_all_roll_script () {
echo -ne "
==============================================================================
flavor roll
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_colloid

if check_command plasmashell; then
  brbinstall_theming_kde_colloid

  brbinstall_theming_kde-misc_color-schemes-all

  brbinstall_theming_kde-misc_konsole-all
fi

brbinstall_theming_icon_fluent

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_all_spice_script () {
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

brbinstall_flavoring_all_vimi_script () {
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
