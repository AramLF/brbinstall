#!/bin/bash

de_xfce_add_dependencies(){
echo -ne "
------------------------------------------------------------------------------
Add dependencies for xfced
------------------------------------------------------------------------------
"
sudo $auto_pkg_installer htop neofetch ncdu git gcc wget curl unzip
}

de_xfce_dockbarlike(){
echo -ne "
------------------------------------------------------------------------------
dockbarlike installation
------------------------------------------------------------------------------
"
sudo add-apt-repository -y ppa:xubuntu-dev/extras
sudo apt update
sudo apt install -y xfce4-docklike-plugin
}

de_xfce_restart_panel(){
echo -ne "
------------------------------------------------------------------------------
restart xfce panel
------------------------------------------------------------------------------
"
xfce4-panel --restart
}

de_xfce_change_theme(){
echo -ne "
------------------------------------------------------------------------------
Changing theme
------------------------------------------------------------------------------
"
xfconf-query -c xsettings -p /Net/ThemeName -s "Mint-Y-Dark-Blue"
xfconf-query -c xfwm4 -p /general/theme -s Mint-Y-Dark-Blue
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
}

de_xfce_change_folder_color(){
sudo papirus-folders -C paleorange --theme Papirus-Dark
}

de_xfce_dotfiles_replacement(){
echo -ne "
------------------------------------------------------------------------------
dotfiles replacement
------------------------------------------------------------------------------
"
#cp docklike-2.rc
cp ~/.config/xfce4/panel/docklike-2.rc ~/.config/xfce4/panel/backup-docklike-2.rc -v
cp $initialPath/Dotfiles/xfce4/panel/docklike-2.rc ~/.config/xfce4/panel/docklike-2.rc -v
#cp whiskermenu-1.rc
cp ~/.config/xfce4/panel/whiskermenu-1.rc ~/.config/xfce4/panel/backup-whiskermenu-1.rc -v
cp $initialPath/Dotfiles/xfce4/panel/whiskermenu-1.rc ~/.config/xfce4/panel/whiskermenu-1.rc -v
#cp xfce4-panel.xml
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backtup-xfce4-panel.xml -v
cp $initialPath/Dotfiles/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml -v
#cp icons.screen.latest.rc
cp ~/.config/xfce4/desktop/icons.screen.latest.rc ~/.config/xfce4/desktop/backup-icons.screen.latest.rc -v
cp $initialPath/Dotfiles/xfce4/desktop/icons.screen.latest.rc ~/.config/xfce4/desktop/icons.screen.latest.rc -v
#cp xfce4-desktop.xml
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup-xfce4-desktop.xml -v
cp $initialPath/Dotfiles/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml -v
#temp for now
}
