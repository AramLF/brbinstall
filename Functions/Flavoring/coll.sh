#!/bin/bash

flavoring_coll_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Coll
------------------------------------------------------------------------------
"

theming_dependencies_global

theming_gtk_colloid

flavoring_coll_de

theming_icon_colloid

theming_terminal_ps1

}

flavoring_coll_de(){
  if check_command plasmashell; then
    theming_kde_colloid

    theming_konsole_all
  fi

}
