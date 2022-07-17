#!/bin/bash

brbinstall_setup_polybar_installation() {
echo -ne "
==============================================================================
Polybar installation
==============================================================================
"
#https://github.com/polybar/polybar
sudo $auto_pkg_installer polybar
}

brbinstall_setup_polybar_create-original-conf() {
echo -ne "
==============================================================================
Polybar original conf
==============================================================================
"

mkdir -p ~/.config/polybar/
cd ~/.config/polybar/

#config.ini too

cp -vr $initialPath/dotfiles/polybar/config.ini config.ini

sed -i "s/example/main1/g" config.ini

#original launch.sh in dotfiles
echo -ne "
#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch main1
echo \"---\" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main1 2>&1 | tee -a /tmp/polybar1.log & disown

echo \"Bar.s launched...\"
" >> launch.sh

chmod +x launch.sh

}

brbinstall_setup_polybar_modified-original-conf() {
echo -ne "
==============================================================================
Polybar modified
==============================================================================
"
cd ~/.config/polybar/

mv -v config.ini config-old.ini

cp -vr $initialPath/dotfiles/polybar/myconfig.ini config.ini
}
