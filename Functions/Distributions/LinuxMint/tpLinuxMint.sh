#!/bin/bash

distrib_linux-mint_start () {
echo -ne "
------------------------------------------------------------------------------
LM
------------------------------------------------------------------------------
"
#none for now
}


distrib_linux-mint_neo () {
echo -ne "
------------------------------------------------------------------------------
Linux Mint neo flavor
------------------------------------------------------------------------------
"
  setup_start_basic_apps

  de_cinnamon_sound

  de_cinnamon_set_gtk_theme "Colloid-dark-compact"

  de_cinnamon_set_icon_theme "Fluent-dark"

  de_cinnamon_set_background "file:////usr/share/backgrounds/linuxmint-una/aholmes_moraine_lake.jpg"

}

distrib_linux-mint_run () {
  ls -l

  #distrib_linux-mint_neo
}
