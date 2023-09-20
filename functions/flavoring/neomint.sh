#!/bin/bash

brbinstall_flavoring_neomint_start () {
echo -ne "
==================================brbinstall==================================
LM
==============================================================================
"
#none for now
#README.md in flavor
}

brbinstall_flavoring_neomint_wifi_prevention () {
echo -ne "
==================================brbinstall==================================
Prevention fix for potential wifi problem on Linux Mint
==============================================================================
"
#prevention of potenital wifi trouble
sudo sed -i 's/wifi.powersave = 3/wifi.powersave = 2/g' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
}

brbinstall_flavoring_neomint_more-pkgs () {
echo -ne "
==================================brbinstall==================================
Linux Mint - more packages
==============================================================================
"

}

brbinstall_flavoring_neomint_remaining () {
echo -ne "
==================================brbinstall==================================
Remaining things to change and/or add
==============================================================================
"
#
echo -ne "
# Download more apps, onlyoffice flatseal (crhomium, boop ?) :
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub com.usebottles.bottles
flatpak install -y flathub fyi.zoey.TeX-Match

# Sourcing for other functions :
cd $initialPath/
source scriptSource.sh

# And check brbinstall_flavoring_neomint_introduce-it

# Desktop icons : RootFolder HomeFolder Trash
# Bar icons : Params Softwares Firefox Folder OnlyOffice

# Remove the title bar in firefox (add addblocker for every web browser)
sudo $auto_pkg_installer chromium
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

brbinstall_flavoring_neomint_introduce-it () {
echo -ne "
==================================brbinstall==================================
Introduce neomint
==============================================================================
"
echo -ne "
# Show boot with grub (show disk usage), and give the password
# Show parameters, mintinstall, firefox and chromium (with the addblocker)
# Show onlyoffice
# Show mintupdate
# Show similarities to windows (wallpapers?)
# Talk about the maintenance
"
}

brbinstall_flavoring_neomint_required-start () {
echo -ne "
==================================brbinstall==================================
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
==================================brbinstall==================================
Changing mintinstall icon
==============================================================================
"
cd /usr/share/icons/hicolor/scalable/apps/
sudo mv -v mintinstall.svg mintinstall-old.svg
sudo cp -v $initialPath/dotfiles/icons/mintinstall_using_software-store_from_papirus.svg mintinstall.svg

}

brbinstall_flavoring_neomint_alternate-theming () {
echo -ne "
==================================brbinstall==================================
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
==================================brbinstall==================================
Linux Mint Neomint flavor
==============================================================================
"
  brbinstall_setup_commands_script-typescript

  brbinstall_flavoring_neomint_required-start

  brbinstall_flavoring_neomint_wifi_prevention

  brbinstall_setup_start_basic-apps

  brbinstall_distrib_deb-based_debian-based_dependencies

  #brbinstall_distrib_deb-based_ubuntu-based_more

  brbinstall_distrib_deb-based_debian-based_some-gui-apps

  #brbinstall_flavoring_neomint_more-pkgs

  brbinstall_de_cinnamon_sound

  brbinstall_de_cinnamon_set-displayed-icons

  brbinstall_flavoring_all_across_script

  brbinstall_de_cinnamon_set-desktop-theme "Orchis-Dark"

  brbinstall_de_cinnamon_set-gtk-theme "adw-gtk3-dark"

  #brbinstall_de_cinnamon_set-wm-theme ""
  #not needed anymore

  brbinstall_de_cinnamon_set-icon-theme "Taru-Breeze-dark"

  brbinstall_theming_wallpaper_rands-walls-spe

  brbinstall_de_cinnamon_set-background "file:////usr/share/backgrounds/walls/spencer-watson-p0Yupww_SNM-unsplash.jpg"

  #echo yes |brbinstall_theming_gterminal_set-flue
  #gterminal #242424

  brbinstall_de_cinnamon_set-monospace-font "Cascadia Mono Regular 10"
  #Work Sans Regular 10 x3 | Work Sans Medium 10

  brbinstall_theming_plymouth_prepare

  brbinstall_theming_plymouth_spinner-lin

  brbinstall_theming_plymouth_set-ubuntu "spinner-lin"

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

  #sudo systemctl disable casper- ...

  brbinstall_setup_commands_script-end

}

brbinstall_flavoring_neomint_run () {
  #stay like this for now
  brbinstall_flavoring_neomint_neomint
}
