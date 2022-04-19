#!/bin/bash

de_cinnamon_mod(){
echo -ne "
------------------------------------------------------------------------------
Cinnamon mod
------------------------------------------------------------------------------
"
#moding it later
}

de_cinnamon_sound(){
echo -ne "
------------------------------------------------------------------------------
Cinnamon sound settings
------------------------------------------------------------------------------
"
#https://superuser.com/questions/1006983/how-to-set-cinnamon-preferences-in-command-line
##### Sound settings.
dconf write /org/cinnamon/sounds/login-enabled false
dconf write /org/cinnamon/sounds/logout-enabled false
dconf write /org/cinnamon/sounds/unplug-enabled false
dconf write /org/cinnamon/sounds/tile-enabled false
dconf write /org/cinnamon/sounds/plug-enabled false
dconf write /org/cinnamon/sounds/switch-enabled false
}
