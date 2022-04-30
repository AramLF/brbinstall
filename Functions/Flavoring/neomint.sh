#!/bin/bash

brbinstall_flavoring_neomint_start () {
echo -ne "
------------------------------------------------------------------------------
LM
------------------------------------------------------------------------------
"
#none for now
}

brbinstall_flavoring_neomint_fluent_local () {
echo -ne "
------------------------------------------------------------------------------
Fluent theme in local
------------------------------------------------------------------------------
"
#flue flavor should be installed first
cd $initialPlaceHolder/Fluent-gtk-theme
./install.sh --tweaks round
}


brbinstall_flavoring_neomint_neomint () {
echo -ne "
------------------------------------------------------------------------------
Linux Mint neo flavor
------------------------------------------------------------------------------
"
  brbinstall_setup_start_basic_apps

  brbinstall_distrib_ubuntu-based_more

  brbinstall_de_cinnamon_sound

  brbinstall_flavoring_flue_script

  brbinstall_flavoring_neomint_fluent_local

  brbinstall_de_cinnamon_set_desktop_theme "Fluent-round-dark-compact"

  brbinstall_de_cinnamon_set_gtk_theme "Fluent-round-dark-compact"

  brbinstall_de_cinnamon_set_wm_theme "Fluent-round-dark"

  brbinstall_de_cinnamon_set_icon_theme "Fluent-dark"

  brbinstall_de_cinnamon_set_background "file:////usr/share/backgrounds/linuxmint-una/aholmes_moraine_lake.jpg"

  brbinstall_setup_miscsetup_flatpak_override

}

brbinstall_flavoring_neomint_run () {
  #stay like this for now
  brbinstall_flavoring_neomint_neomint
}
