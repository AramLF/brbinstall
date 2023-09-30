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
# Sourcing for other functions :
cd $initialPath/
source scriptSource.sh

#Check other modalities with neobian remaining
# Download more apps and check flatpaks, and more settings here :
brbinstall_flavoring_neobian_remaining

# And check brbinstall_flavoring_neomint_introduce-it

#Change fonts (Cascadia Mono Regular & Work Sans)

# Desktop icons : RootFolder HomeFolder Trash
# Panel icons : Params Softwares Firefox Folder OnlyOffice

# Remove the title bar in firefox (add adblocker for every web browser)
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

#Minimal ?
sudo nala remove libreoffice* thunderbird

# Add tldr (npm or python3-pip (for libs) or pipx (for commands))
sudo $auto_pkg_installer python3-pip pipx
pipx install tldr
echo 'PATH=\"\$PATH:~/.local/bin\"' >> ~/.bashrc
source ~/.bashrc
tldr -u

# Tests medias, remove scripts and used folders when finished (bash_history ?)

# Check any services that is not properly disabled (ie casper- ...)
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
# Show onlyoffice (and medias, pdf, etc...)
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

  #brbinstall_setup_start_basic-apps #function below

  brbinstall_distrib_deb-based_debian-based_dependencies

  brbinstall_distrib_deb-based_debian-based_os-prober-activated

  brbinstall_setup_miscsetup_bottom-deb

  brbinstall_setup_server_distance

  brbinstall_setup_server_numlock-for-tty

  #brbinstall_distrib_deb-based_ubuntu-based_more #nothing in it

  brbinstall_distrib_deb-based_debian-based_some-gui-apps

  #brbinstall_flavoring_neomint_more-pkgs #nothing in it

  brbinstall_de_cinnamon_sound

  brbinstall_de_cinnamon_set-displayed-icons

  brbinstall_flavoring_all_across_script

  brbinstall_de_cinnamon_set-desktop-theme "Orchis-Dark"

  brbinstall_de_cinnamon_set-gtk-theme "adw-gtk3-dark"

  #brbinstall_de_cinnamon_set-wm-theme "" #not needed anymore

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

  #brbinstall_theming_gtk_themes-system-to-user #maybe not needed

  #brbinstall_setup_miscsetup_flatpak-override #maybe not needed same as the above

  brbinstall_de_gnome_template-nemo-nautilus

  brbinstall_flavoring_neomint_remaining

  brbinstall_setup_commands_script-end

}

brbinstall_flavoring_neomint_run () {
  #stay like this for now
  brbinstall_flavoring_neomint_neomint
}
