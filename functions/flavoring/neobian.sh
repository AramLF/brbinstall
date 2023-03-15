#!/bin/bash

brbinstall_flavoring_neobian_start () {
echo -ne "
==============================================================================
Debian
==============================================================================
"
#none for now
#README.md in flavor
}

brbinstall_flavoring_neobian_prevention () {
echo -ne "
==============================================================================
Prevention
==============================================================================
"
#prevention
ls

sudo $auto_pkg_installer lightdm

sudo systemctl enable lightdm

#sudo systemctl set-default graphical.target

sudo $auto_pkg_installer xfce4?



#xfce4
sudo $auto_pkg_installer mousepad
sudo $auto_pkg_installer nm-applet nm-tray
sudo $auto_pkg_installer lightdm-gtk-greeter-settings


sudo $auto_pkg_installer firefox pavucontrol ?


#check les services

#mix papirus and yaru ?


#server
sudo $auto_pkg_installer cockpit
sudo systemctl enable cockpit


#other
#wallpaper, icons, menuIcon(whiskermenu), systray icons, change time display, original font

}

brbinstall_flavoring_neobian_neobian () {
echo -ne "
==============================================================================
Running neobian
==============================================================================
"
ls
}


brbinstall_flavoring_neobian_run () {
  #stay like this for now
  brbinstall_flavoring_neobian_neobian
}
