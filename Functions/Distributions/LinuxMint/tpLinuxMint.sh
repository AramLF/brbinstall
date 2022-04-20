#!/bin/bash

distrib_linux-mint_start () {
echo -ne "
------------------------------------------------------------------------------
LM
------------------------------------------------------------------------------
"
#none for now
}

distrib_linux-mint_more () {
echo -ne "
------------------------------------------------------------------------------
Linux Mint pkgs
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer libc6-dev
}

distrib_linux-mint_fluent_local () {
echo -ne "
------------------------------------------------------------------------------
Fluent theme in local
------------------------------------------------------------------------------
"
#flue flavor should be installed first
cd $initialPlacement/Fluent-gtk-theme
./install.sh --tweaks round
}


distrib_linux-mint_neomint () {
echo -ne "
------------------------------------------------------------------------------
Linux Mint neo flavor
------------------------------------------------------------------------------
"
  setup_start_basic_apps

  distrib_linux-mint_more

  de_cinnamon_sound

  flavoring_flue_script

  distrib_linux-mint_fluent_local

  de_cinnamon_set_desktop_theme "Fluent-round-dark-compact"

  de_cinnamon_set_gtk_theme "Fluent-round-dark-compact"

  de_cinnamon_set_wm_theme "Fluent-round-dark"

  de_cinnamon_set_icon_theme "Fluent-dark"

  de_cinnamon_set_background "file:////usr/share/backgrounds/linuxmint-una/aholmes_moraine_lake.jpg"

  setup_miscsetup_flatpak_override

}

distrib_linux-mint_run () {
  #stay like this for now
  distrib_linux-mint_neomint
}
