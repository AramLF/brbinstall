#!/bin/bash

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
