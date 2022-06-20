#!/bin/bash

brbinstall_flavoring_roll_script () {
echo -ne "
==============================================================================
flavor roll
==============================================================================
"

brbinstall_theming_dependencies_global

brbinstall_theming_gtk_colloid

brbinstall_flavoring_roll_de

brbinstall_theming_icon_fluent

brbinstall_theming_terminal_ps1

}

brbinstall_flavoring_roll_de(){
  if check_command plasmashell; then
    brbinstall_theming_kde_colloid

    brbinstall_theming_kde-misc_color-schemes-all

    brbinstall_theming_kde-misc_konsole-all
  fi
}
