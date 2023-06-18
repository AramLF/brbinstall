#!/bin/bash

brbinstall_de_xfce_add-dependencies(){
echo -ne "
==============================================================================
Add dependencies for xfced
==============================================================================
"
#none for now
}

brbinstall_de_xfce_panel-size(){
echo -ne "
==============================================================================
Change panel size
==============================================================================
"
xfconf-query --channel 'xfce4-panel' --property '/panels/panel-1/size' --type int --set $1
}

brbinstall_de_xfce_dockbarlike(){
echo -ne "
==============================================================================
dockbarlike for ubuntu based installation
==============================================================================
"
sudo add-apt-repository -y ppa:xubuntu-dev/extras
sudo apt update
sudo apt install -y xfce4-docklike-plugin
}

brbinstall_de_xfce_panel-restart(){
echo -ne "
==============================================================================
restart xfce panel
==============================================================================
"
xfce4-panel --restart
}

brbinstall_de_xfce_set-background(){
echo -ne "
==============================================================================
xfce set background
==============================================================================
"
xfconf-query -c xfce4-desktop -m
#change wallpaper then
xfconf-query -c xfce4-desktop -p property_goes_here -s path/to/imagefile.jpg
}

brbinstall_de_xfce_set-xfwm4-theme(){
echo -ne "
==============================================================================
xfce set xfwm4 theme
==============================================================================
"
#xfconf-query -c xfwm4 -p /general/theme -s Mint-Y-Dark-Blue
xfconf-query -c xfwm4 -p /general/theme -s $1
}

brbinstall_de_xfce_set-gtk-theme(){
echo -ne "
==============================================================================
Changing gtk-theme
==============================================================================
"
#xfconf-query -c xsettings -p /Net/ThemeName -s "Mint-Y-Dark-Blue"
xfconf-query -c xsettings -p /Net/ThemeName -s $1
}

brbinstall_de_xfce_set-icon-theme(){
echo -ne "
==============================================================================
Changing icon theme
==============================================================================
"
#xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s $1
}

brbinstall_de_xfce_set-font-gtk-theme(){
echo -ne "
==============================================================================
Changing font of the gtk theme
==============================================================================
"
#xfconf-query -c xsettings -p /Gtk/FontName -s "Work Sans 10"
xfconf-query -c xsettings -p /Gtk/FontName -s "$1"
}

brbinstall_de_xfce_set-font-monospace-gtk-theme(){
echo -ne "
==============================================================================
Changing font of the gtk theme
==============================================================================
"
#xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "Cascadia Mono Regular 10"
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "$1"
}

brbinstall_de_xfce_set-xfwm4-font-theme(){
echo -ne "
==============================================================================
xfce set xfwm4 font theme
==============================================================================
"
#xfconf-query -c xfwm4 -p /general/title_font -s "Work Sans 10"
xfconf-query -c xfwm4 -p /general/title_font -s "$1"
}
