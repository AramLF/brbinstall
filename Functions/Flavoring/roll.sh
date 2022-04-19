#!/bin/bash

flavoring_roll_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor roll
------------------------------------------------------------------------------
"

theming_dependencies_global

theming_gtk_colloid

flavoring_roll_de

theming_icon_fluent

theming_terminal_ps1

}

flavoring_roll_de(){
  if check_command plasmashell; then
    theming_kde_colloid

    theming_color-schemes_all

    theming_konsole_all
  fi
}
