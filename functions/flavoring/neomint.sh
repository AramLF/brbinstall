#!/bin/bash

brbinstall_flavoring_neomint_start () {
echo -ne "
==============================================================================
LM
==============================================================================
"
#none for now
#README.md in flavor
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

brbinstall_flavoring_neomint_more-pkgs () {
echo -ne "
==============================================================================
Linux Mint - more packages
==============================================================================
"
sudo $auto_pkg_installer chromium
sudo $auto_pkg_installer numlockx
}

brbinstall_flavoring_neomint_remaining () {
echo -ne "
==============================================================================
Remaining things to change and/or add
==============================================================================
"
#
echo -ne "
# Download more apps, onlyoffice flatseal (crhomium, boop ?) :
flatpak install flathub org.onlyoffice.desktopeditors
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.usebottles.bottles
flatpak install flathub fyi.zoey.TeX-Match

# Alternate theming with yaru :
cd $initialPath/
source scriptSource.sh
brbinstall_flavoring_neomint_alternate-theming

# Desktop icons : RootFolder HomeFolder Trash
# Bar icons : Params Softwares Firefox Folder OnlyOffice

# Remove the title bar in firefox (add addblocker for every web browser)
# Chromium (change search engine, remove title bar, addblocker)
# Search Engine : Google google.com {google:baseURL}search?q=%s (remove favs)

# Change the default apps (Documents to OnlyOffice and music Rhythmbox)
# Add manually xlsx with OnlyOffice (pptx can stay on LibreOffice (tabs))
# Change the clock format to : %H:%M %d/%m/%Y
# Change the middle click on the bar to \"Open a new window\"
# Add 'us' keyboard layout
# Add numlock at startup (lightdm and press it)
# Remove notification of connection

# Change the param in mintupdate to remove old kernel automatically

# Add and configure Anydesk in order to help (remove at startup)

# Tests medias, remove scripts and used folders when finished (bash_history ?)
"

}

brbinstall_flavoring_neomint_required-start () {
echo -ne "
==============================================================================
README.md for neomint
==============================================================================
"
cat $initialPath/flavor/neomint/README.md
echo -ne "
"
read -r -p "[Enter] to continue or [Ctrl+C] to stop here : " idkidk

}

brbinstall_flavoring_neomint_mintinstall-icon () {
echo -ne "
==============================================================================
Changing mintinstall icon
==============================================================================
"
cd /usr/share/icons/hicolor/scalable/apps/
sudo mv -v mintinstall.svg mintinstall-old.svg
sudo cp -v $initialPath/dotfiles/icons/mintinstall_using_software-store_from_papirus.svg mintinstall.svg

}

brbinstall_flavoring_neomint_alternate-theming () {
echo -ne "
==============================================================================
Alternate theming for neomint with yaru
==============================================================================
"
  #Neomint flavor shoud be executed beforehand

  brbinstall_theming_aio_yaru-whole-installation

  brbinstall_flavoring_neomint_mintinstall-icon

  brbinstall_theming_gtk_themes-system-to-user

  brbinstall_de_cinnamon_set-desktop-theme "Yaru-dark"

  brbinstall_de_cinnamon_set-gtk-theme "Yaru-dark"

  #brbinstall_de_cinnamon_set-wm-theme

  brbinstall_de_cinnamon_set-icon-theme "Yaru-dark"

  brbinstall_de_cinnamon_set-background "file:////usr/share/backgrounds/walls/pexels-krivec-ales-552789-1920x1080-jpg.jpg"

}

brbinstall_flavoring_neomint_neomint () {
echo -ne "
==============================================================================
Linux Mint Neomint flavor
==============================================================================
"
  brbinstall_flavoring_neomint_required-start

  brbinstall_flavoring_neomint_wifi_prevention

  brbinstall_setup_start_basic-apps

  brbinstall_distrib_deb-based_ubuntu-based_more

  brbinstall_flavoring_neomint_more-pkgs

  brbinstall_de_cinnamon_sound

  brbinstall_de_cinnamon_set-displayed-icons

  brbinstall_flavoring_flue_script

  #Not used anymore since all themes are copied now in it
  #brbinstall_theming_gtk_fluent "--tweaks round --dest $HOME/.themes"

  brbinstall_de_cinnamon_set-desktop-theme "Fluent-round-Dark-compact"

  brbinstall_de_cinnamon_set-gtk-theme "Fluent-round-Dark-compact"

  brbinstall_de_cinnamon_set-wm-theme "Fluent-round-Dark"

  brbinstall_de_cinnamon_set-icon-theme "Fluent-dark"

  brbinstall_theming_wallpaper_rands-walls-spe

  brbinstall_de_cinnamon_set-background "file:////usr/share/backgrounds/walls/aholmes_moraine_lake-lmuna.jpg"

  echo yes |brbinstall_theming_gterminal_set-flue

  brbinstall_de_cinnamon_set-monospace-font "Ubuntu Mono 12"

  brbinstall_de_cinnamon_set-tap-to-click

  brbinstall_de_cinnamon_set-flags-keyboard-layout

  brbinstall_setup_miscsetup_flatpak-installation

  brbinstall_de_cinnamon_set-icon-view-nemo

  brbinstall_de_cinnamon_set-links-in-nemo

  brbinstall_setup_miscsetup_flathub

  brbinstall_theming_gtk_themes-system-to-user

  brbinstall_setup_miscsetup_flatpak-override

  brbinstall_de_gnome_template-nemo-nautilus

  brbinstall_flavoring_neomint_remaining

}

brbinstall_flavoring_neomint_run () {
  #stay like this for now
  brbinstall_flavoring_neomint_neomint
}
