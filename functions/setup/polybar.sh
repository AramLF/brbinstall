#!/bin/bash

brbinstall_setup_polybar_installation() {
echo -ne "
==================================brbinstall==================================
Polybar installation
==============================================================================
"
#https://github.com/polybar/polybar
sudo $auto_pkg_installer polybar
}

brbinstall_setup_polybar_create-original-conf() {
echo -ne "
==================================brbinstall==================================
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
==================================brbinstall==================================
Polybar modified
==============================================================================
"
cd ~/.config/polybar/

mv -v config.ini config-old.ini

cp -vr $initialPath/dotfiles/polybar/myconfig.ini config.ini
}

brbinstall_setup_polybar_auto-theming() {
echo -ne "
==================================brbinstall==================================
Polybar auto theming
==============================================================================
"
cd ~/.config/polybar/

sed -i "s/.*background = #.*/background = #$1/g" config.ini
sed -i "s/.*red1 = #.*/red1 = #$2/g" config.ini
sed -i "s/.*green1 = #.*/green1 = #$3/g" config.ini
sed -i "s/.*yellow1 = #.*/yellow1 = #$4/g" config.ini
sed -i "s/.*blue1 = #.*/blue1 = #$5/g" config.ini
sed -i "s/.*purple1 = #.*/purple1 = #$6/g" config.ini
sed -i "s/.*lightBlue1 = #.*/lightBlue1 = #$7/g" config.ini
sed -i "s/.*foreground = #.*/foreground = #$8/g" config.ini

sed -i "s/.*background-alt = #.*/background-alt = #$9/g" config.ini
sed -i "s/.*red2 = #.*/red2 = #${10}/g" config.ini
sed -i "s/.*green2 = #.*/green2 = #${11}/g" config.ini
sed -i "s/.*yellow2 = #.*/yellow2 = #${12}/g" config.ini
sed -i "s/.*blue2 = #.*/blue2 = #${13}/g" config.ini
sed -i "s/.*purple2 = #.*/purple2 = #${14}/g" config.ini
sed -i "s/.*lightBlue2 = #.*/lightBlue2 = #${15}/g" config.ini
sed -i "s/.*foreground-alt = #.*/foreground-alt = #${16}/g" config.ini


}


brbinstall_setup_polybar_setting-up() {
echo -ne "
==================================brbinstall==================================
Polybar setting-up
==============================================================================
"
brbinstall_setup_polybar_installation

brbinstall_setup_polybar_create-original-conf

brbinstall_setup_polybar_modified-original-conf

echo -ne "
The theme you want :
brbinstall_theming_polybar_set-*
"
}
