#!/bin/bash

flavoring_wind_script () {
echo -ne "
------------------------------------------------------------------------------
Flavor Wind
------------------------------------------------------------------------------
"

theming_dependencies_global

theming_gtk_fluent

flavoring_wind_de

theming_icon_fluent

theming_terminal_ps1

}

flavoring_wind_de(){
  if check_command plasma-desktop; then
    theming_kde_fluent

    theming_konsole_all
  fi
}
