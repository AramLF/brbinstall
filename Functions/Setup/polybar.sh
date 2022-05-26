#!/bin/bash

brbinstall_setup_polybar_start() {
echo -ne "
==============================================================================
Kitty
==============================================================================
"
sudo $auto_pkg_installer polybar
}

brbinstall_setup_polybar_personal-conf() {
echo -ne "
==============================================================================
Kitty personal conf
==============================================================================
"

mkdir -p ~/.config/polybar/
cd ~/.config/polybar/

echo -ne "
#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo \"---\" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo \"Bars launched...\"
" >> launch.sh

chmod +x launch.sh

}
