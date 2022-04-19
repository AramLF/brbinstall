#!/bin/bash

flavoring_flue_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Flue
------------------------------------------------------------------------------
"

theming_dependencies_global

theming_gtk_fluent

flavoring_flue_de

theming_icon_fluent

theming_terminal_ps1

}

flavoring_flue_de(){
  if check_command plasmashell; then
    theming_kde_fluent

    theming_konsole_all
  fi
}
