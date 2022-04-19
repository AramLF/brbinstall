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

}

distrib_linux-mint_run () {
  ls -l

  #distrib_linux-mint_neo
}
