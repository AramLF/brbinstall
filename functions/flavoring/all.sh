#!/bin/bash

brbinstall_flavoring_all_choice() {
echo -ne "
==============================================================================
flavoring choice
==============================================================================
"

#terrible way of doing things (need to be changed seriously)
echo "Choose the flavor to install :"
echo "1) catp"
echo "2) coll"
echo "3) flue"
echo "4) grey"
echo "5) matte"
echo "6) roll"
echo "7) spice"
echo "8) vimi"
echo " "
read -r -p "Select the flavor with the number, [Enter] to validate : " flavChoice

#another terrible way of doing things :
if [ $flavChoice = "1" ]
then
  brbinstall_flavoring_catp_script
elif [ $flavChoice = "2" ]
then
  brbinstall_flavoring_coll_script
elif [ $flavChoice = "3" ]
then
  brbinstall_flavoring_flue_script
elif [ $flavChoice = "4" ]
then
  brbinstall_flavoring_grey_script
elif [ $flavChoice = "5" ]
then
  brbinstall_flavoring_matte_script
elif [ $flavChoice = "6" ]
then
  brbinstall_flavoring_roll_script
elif [ $flavChoice = "7" ]
then
  brbinstall_flavoring_spice_script
elif [ $flavChoice = "8" ]
then
  brbinstall_flavoring_vimi_script
else
  echo "exiting please choose something in the list";
  exit 1;
fi

}


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

brbinstall_flavoring_coll_script () {
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

brbinstall_flavoring_flue_script () {
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

brbinstall_flavoring_matte_script () {
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

brbinstall_flavoring_roll_script () {
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
