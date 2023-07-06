#!/bin/bash

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
