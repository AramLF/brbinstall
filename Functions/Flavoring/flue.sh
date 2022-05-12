#!/bin/bash

brbinstall_flavoring_flue_script () {
echo -ne "
==============================================================================
Flavor Flue
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_fluent

brbinstall_flavoring_flue_de

brbinstall_theming_icon_fluent

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_flue_de(){
  if check_command plasmashell; then
    brbinstall_theming_kde_fluent

    brbinstall_theming_kde-misc_konsole_all
  fi
}
