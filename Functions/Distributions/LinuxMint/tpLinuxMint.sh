#!/bin/bash

brbinstall_distrib_linux-mint_start () {
echo -ne "
------------------------------------------------------------------------------
LM
------------------------------------------------------------------------------
"
#none for now
}

brbinstall_distrib_linux-mint_more () {
echo -ne "
------------------------------------------------------------------------------
Linux Mint pkgs
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer libc6-dev
}

brbinstall_distrib_linux-mint_fluent_local () {
echo -ne "
------------------------------------------------------------------------------
Fluent theme in local
------------------------------------------------------------------------------
"
#flue flavor should be installed first
cd $initialPlacement/Fluent-gtk-theme
./install.sh --tweaks round
}


brbinstall_distrib_linux-mint_neomint () {
echo -ne "
------------------------------------------------------------------------------
Linux Mint neo flavor
------------------------------------------------------------------------------
"
  brbinstall_setup_start_basic_apps

  brbinstall_distrib_linux-mint_more

  brbinstall_de_cinnamon_sound

  brbinstall_flavoring_flue_script

  brbinstall_distrib_linux-mint_fluent_local

  brbinstall_de_cinnamon_set_desktop_theme "Fluent-round-dark-compact"

  brbinstall_de_cinnamon_set_gtk_theme "Fluent-round-dark-compact"

  brbinstall_de_cinnamon_set_wm_theme "Fluent-round-dark"

  brbinstall_de_cinnamon_set_icon_theme "Fluent-dark"

  brbinstall_de_cinnamon_set_background "file:////usr/share/backgrounds/linuxmint-una/aholmes_moraine_lake.jpg"

  brbinstall_setup_miscsetup_flatpak_override

}

brbinstall_distrib_linux-mint_run () {
  #stay like this for now
  brbinstall_distrib_linux-mint_neomint
}
