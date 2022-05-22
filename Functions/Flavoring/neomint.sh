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

brbinstall_flavoring_neomint_neomint () {
echo -ne "
==============================================================================
Linux Mint Neomint flavor
==============================================================================
"
  brbinstall_flavoring_neomint_wifi_prevention

  brbinstall_setup_start_basic_apps

  brbinstall_distrib_ubuntu-based_more

  brbinstall_de_cinnamon_sound

  brbinstall_flavoring_flue_script

  brbinstall_theming_gtk_fluent "--tweaks round --dest $HOME/.themes"

  brbinstall_de_cinnamon_set_desktop_theme "Fluent-round-dark-compact"

  brbinstall_de_cinnamon_set_gtk_theme "Fluent-round-dark-compact"

  brbinstall_de_cinnamon_set_wm_theme "Fluent-round-dark"

  brbinstall_de_cinnamon_set_icon_theme "Fluent-dark"

  brbinstall_theming_wallpaper_rands-walls-spe

  brbinstall_de_cinnamon_set_background "file:////usr/share/backgrounds/walls/aholmes_moraine_lake-lmuna.jpg"

  brbinstall_setup_miscsetup_flatpak_override

}

brbinstall_flavoring_neomint_run () {
  #stay like this for now
  brbinstall_flavoring_neomint_neomint
}
