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

brbinstall_flavoring_neobian_debian-net () {
echo -ne "
==============================================================================
Setup debian net live
==============================================================================
"
#setup debian net live

#choisir utilitaires usuels du système

#Wifi connection for debian server
#https://www.linuxtricks.fr/wiki/systemd-le-reseau-avec-systemd-networkd
#https://linuxhint.com/3-ways-to-connect-to-wifi-from-the-command-line-on-debian/
echo -ne '
sudo systemctl enable systemd-networkd.service
sudo systemctl start systemd-networkd.service
sudo nano /etc/systemd/network/wlp3s0-wireless.network
echo -ne "
[Match]
Name=enp0s3
[Network]
DHCP=ipv4
"
systemctl restart systemd-networkd
sudo iwconfig
ip address
sudo iwlist wlp3s0 scan | grep ESSID
wpa_passphrase LinuxHint morochita | sudo tee /etc/wpa_supplicant.conf
sudo wpa_supplicant -c /etc/wpa_supplicant.conf -i wlp3s0 &
sudo iwconfig
sudo dhclient wlp3s0
'

sudo $auto_pkg_installer network-manager

#sudo nmtui
}

brbinstall_flavoring_neobian_setup-xfce () {
echo -ne "
==============================================================================
Neobian xfce
==============================================================================
"

sudo $auto_pkg_installer xfce4


sudo $auto_pkg_installer lightdm
sudo $auto_pkg_installer lightdm-gtk-greeter-settings
sudo $auto_pkg_installer numlockx
#sudo systemctl disable lightdm
#sudo systemctl enable lightdm
#sudo systemctl set-default graphical.target

#other
#wallpaper, icons, menuIcon(whiskermenu), systray icons, change time display, original font

#remove xfce bottom panel check https://forum.xfce.org/viewtopic.php?id=13717
#recolor top panel with #242424

#whiskermenu & remove the other one
# nm-applet nm-tray xfce4-goodies(term and nm tray and everything in it ?)<--(maybe avoid it ?)
sudo $auto_pkg_installer xfce4-whiskermenu-plugin xfce4-xkb-plugin xfce4-pulseaudio-plugin xfce4-power-manager
sudo $auto_pkg_installer network-manager-gnome blueman
#Afficher sous forme d'arborescence, petite plus petite, Positionner (les catégories, le champ), icône et texte (Applications), catégories au survol

#workspace 2 lignes
#barre d'état(ajuster la taille, symboliques)
#greffon pulseaudio(with pavucontrol) power-manager disposition-clavier(système) Horloge Notification Afficher-bureau

#change le temps avec heure puis date (et format de date avec des /)

#peaufinage des fenêtres : placement --> grande au max

#remove icons from desktop

sudo $auto_pkg_installer plank
#plank at xfce start
#Suppr les ombres dock (peaufinage des fenêtres xfce)
mkdir -p ~/.config/autostart
echo -ne '[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=planked
Comment=
Exec=plank
OnlyShowIn=XFCE;
RunHook=0
StartupNotify=false
Terminal=false
Hidden=false
' | tee ~/.config/autostart/planked.desktop >/dev/null

sudo $auto_pkg_installer mousepad xfce4-terminal thunar
#thunar : display up bar as buttons

#list users & numlock in the server function
#/etc/lightdm/lightdm.conf

cp -vr $initialPath/dotfiles/xfce/xfce4 ~/.config/
sudo cp -vr $initialPath/dotfiles/gtksourceview/styles/* /usr/share/gtksourceview-4/styles/

}

brbinstall_flavoring_neobian_setup-plasma () {
echo -ne "
==============================================================================
Neobian plasma
==============================================================================
"
#not finished

sudo $auto_pkg_installer plasma-desktop konsole dolphin kate
echo -ne "
brbinstall_flavoring_all_choice
brbinstall_theming_fonts_all
brbinstall_theming_wallpaper_all
#check lockscreen, background & sddm(if present)
"
}

brbinstall_flavoring_neobian_theming-xfce () {
echo -ne "
==============================================================================
Theming xfce neobian
==============================================================================
"
brbinstall_flavoring_all_across_script

brbinstall_de_xfce_set-xfwm4-theme "adw-gtk3-dark-small"

brbinstall_de_xfce_set-gtk-theme "adw-gtk3-dark"

brbinstall_de_xfce_set-icon-theme "Taru-Breeze-dark"

brbinstall_de_xfce_set-font-gtk-theme "Work Sans 10"

brbinstall_de_xfce_set-xfwm4-font-theme "Work Sans 10"

brbinstall_de_xfce_set-font-monospace-gtk-theme "Cascadia Mono Regular 10"

}

brbinstall_flavoring_neobian_some-apps () {
echo -ne "
==============================================================================
Neobian some apps
==============================================================================
"
sudo $auto_pkg_installer firefox-esr pavucontrol synaptic gparted
sudo $auto_pkg_installer kitty alacritty cool-retro-term
sudo $auto_pkg_installer laptop-mode-tools

}

brbinstall_flavoring_neobian_remaining () {
echo -ne "
==============================================================================
Neobian remaining
==============================================================================
"
#other program with pkgs
echo -ne "
#Neobian dev & vm : 
anydesk(remove from startup and do the security)
vscodium(fedora gnome colors | git graph | Cascadia Mono) 
setup all the functionning git for brb, Bo, misc, etc...

#xfce checks : 
#change default applications in mimes; add tap to click
#lightdm-gtk-greeter-settings (check numlock & listusers): #%H:%M %A %d/%m/%Y adw-gtk3-dark Taru-Breeze-dark Work-Sans-Regular-10 background
#plank : (icon zoom 130) Parameters Softwares Browser Folder Terminal

#Some checks :
brbinstall_distrib_deb-based_debian-based_setup-zram
check terminal ps1 (user & root), cursors, mousepad gtksourceview
check the typescript in cachefolder

#Neobian all (spice&i3)
brbinstall_flavoring_neobian_setup-plasma
brbinstall_distrib_deb-based_debian-based_i3-gaps-deb
brbinstall_flavoring_r3_setting-up
Try to add Hyprland(compiled if possible)

#Debian testing and more :
brbinstall_distrib_deb-based_debian-based_switch-ver "bookworm" "trixie"
brbinstall_distrib_deb-based_debian-based_add-backports

#Neobian serv mode :
brbinstall_flavoring_neobian_serverd
brbinstall_distrib_deb-based_debian-based_plymouth-unshow
sudo systemctl disable lightdm

#Some other apps :
sudo $auto_pkg_installer chromium obs-sudio steam
#already added sudo $auto_pkg_installer flatpak
#maybe avoid sudo $auto_pkg_installer grub-customizer
#discord vivaldi teamspeak
brbinstall_setup_miscsetup_tar-opt-install
#wezterm
kate ghostwritter goverlay(MangoHud) bottom caffeine(if it works ?)
3d-ascii-viewer-c
Unigine heaven to try the gpu
obsidian(try logseq ?) 

#compile iced https://github.com/iced-rs/iced
#compile bazaar https://github.com/hojjatabdollahi/bazaar

#Exe : DragonRaja Notepad++ Kara Kate scan-app

#not have to overide gtk theme for flatpak ?

"

#other program with flatpak
echo -ne "
# Basic apps
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub de.haeckerfelix.Shortwave
flatpak install -y flathub com.usebottles.bottles
flatpak install -y flathub com.github.flxzt.rnote
flatpak install -y flathub fyi.zoey.TeX-Match
flatpak install -y flathub fyi.zoey.Boop-GTK

# Across theme :
flatpak install -y flathub com.github.GradienceTeam.Gradience 
flatpak install -y flathub org.gtk.Gtk3theme.adw-gtk3-dark
flatpak install -y flathub org.gtk.Gtk3theme.adw-gtk3

#other apps
flatpak install -y flathub org.gnome.gitlab.YaLTeR.VideoTrimmer
flatpak install -y flathub fr.romainvigier.MetadataCleaner
flatpak install -y flathub com.github.marinm.songrec
flatpak install -y flathub io.github.seadve.Mousai
"
}

brbinstall_flavoring_neobian_things-to-check () {
echo -ne "
==============================================================================
not checked
==============================================================================
"
#finish plasma setup
#for the other one gnome-core
#check (services) startjobs from systemd

#https://github.com/Antynea/grub-btrfs
#check os-prober
}


brbinstall_flavoring_neobian_neobian () {
echo -ne "
==============================================================================
Running neobian
==============================================================================
"
brbinstall_setup_commands_script-typescript

brbinstall_distrib_deb-based_debian-based_run-script

brbinstall_setup_miscsetup_bottom-deb

brbinstall_setup_server_distance

brbinstall_setup_server_allow-closed-laptop-lid

brbinstall_setup_server_numlock-for-tty

brbinstall_theming_plymouth_prepare

brbinstall_theming_plymouth_spinner-lin

brbinstall_theming_plymouth_set "spinner-lin"

brbinstall_flavoring_neobian_setup-xfce

brbinstall_setup_server_start-with-display

brbinstall_flavoring_neobian_theming-xfce

brbinstall_flavoring_neobian_some-apps

brbinstall_setup_miscsetup_flatpak-installation

brbinstall_setup_miscsetup_flathub

brbinstall_setup_miscsetup_vmtools

brbinstall_setup_commands_script-end

}

brbinstall_flavoring_neobian_serverd () {
echo -ne "
==============================================================================
Running neobian for server
==============================================================================
"
echo -ne '
brbinstall_flavoring_neobian_neobian
brbinstall_distrib_deb-based_debian-based_plymouth-unshow
brbinstall_setup_server_allow-closed-laptop-lid
sudo systemctl disable lightdm
'
}


brbinstall_flavoring_neobian_run () {
  #stay like this for now
  brbinstall_flavoring_neobian_neobian
}
