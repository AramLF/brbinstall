#!/bin/bash

brbinstall_flavoring_neomint_start () {
echo -ne "
==============================================================================
LM
==============================================================================
"
#none for now
}

brbinstall_flavoring_neomint_wifi_prevention () {
echo -ne "
==============================================================================
Prevention fix for potential wifi problem on Linux Mint
==============================================================================
"
#prevention of potenital wifi trouble
sudo sed -i 's/wifi.powersave = 3/wifi.powersave = 2/g' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
}

brbinstall_flavoring_neomint_remaining () {
echo -ne "
==============================================================================
Remaining things to change and/or add
==============================================================================
"
echo -ne "
# Download more apps, onlyoffice flatseal (boop ?) :
flatpak install flathub org.onlyoffice.desktopeditors
flatpak install flathub com.github.tchx84.Flatseal

# Desktop icons : RootFolder HomeFolder Trash
# Bar icons : Params Softwares Firefox Folder OnlyOffice

# Remove the title bar for firefox
# Change the default apps (Documents to OnlyOffice)
# Change the clock format to : %H:%M %d/%m/%Y

# Remove scripts and used folders when finished
"

}

brbinstall_flavoring_neomint_neomint () {
echo -ne "
==============================================================================
Linux Mint Neomint flavor
==============================================================================
"
  brbinstall_flavoring_neomint_wifi_prevention

  brbinstall_setup_start_basic-apps

  brbinstall_distrib_deb-based_ubuntu-based_more

  brbinstall_de_cinnamon_sound

  brbinstall_de_cinnamon_set-displayed-icons

  brbinstall_flavoring_flue_script

  brbinstall_theming_gtk_fluent "--tweaks round --dest $HOME/.themes"

  brbinstall_de_cinnamon_set-desktop-theme "Fluent-round-Dark-compact"

  brbinstall_de_cinnamon_set-gtk-theme "Fluent-round-Dark-compact"

  brbinstall_de_cinnamon_set-wm-theme "Fluent-round-Dark"

  brbinstall_de_cinnamon_set-icon-theme "Fluent-dark"

  brbinstall_theming_wallpaper_rands-walls-spe

  brbinstall_de_cinnamon_set-background "file:////usr/share/backgrounds/walls/aholmes_moraine_lake-lmuna.jpg"

  brbinstall_de_cinnamon_set-monospace-font "Ubuntu Mono 12"

  brbinstall_setup_miscsetup_flathub

  brbinstall_setup_miscsetup_flatpak-override

  brbinstall_flavoring_neomint_remaining

}

brbinstall_flavoring_neomint_run () {
  #stay like this for now
  brbinstall_flavoring_neomint_neomint
}
