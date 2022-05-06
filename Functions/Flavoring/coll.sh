#!/bin/bash

brbinstall_flavoring_coll_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Coll
------------------------------------------------------------------------------
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_colloid

brbinstall_flavoring_coll_de

brbinstall_theming_icon_colloid

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_coll_de(){
  if check_command plasmashell; then
    brbinstall_theming_kde_colloid

    brbinstall_theming_kde-misc_color-schemes_all

    brbinstall_theming_kde-misc_konsole_all
  fi

}
