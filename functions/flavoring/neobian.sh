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

#enlever les icônes sur le bureau (clic droit param)

sudo $auto_pkg_installer plank
#plank au start d'xfce
#zoom sur icône : 130
#Paramètres Logiciels Navigateur Dossier Terminal
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

#lightdm-gtk-greeter-settings
#%H:%M %A %d/%m/%Y adw-gtk3-dark Taru-Breeze-dark Work-Sans-Regular-10 background

#list users
#/etc/lightdm/lightdm.conf
#greeter-hide-users=false #???? ça marche ap ?

#change default applications in mimes

cp -vr $initialPath/dotfiles/xfce/xfce4 ~/.config/

}

brbinstall_flavoring_neobian_setup-plasma () {
echo -ne "
==============================================================================
Neobian plasma
==============================================================================
"
#not finished

sudo $auto_pkg_installer plasma-desktop konsole dolphin


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

brbinstall_flavoring_neobian_remaining () {
echo -ne "
==============================================================================
Neobian remaining
==============================================================================
"
#other program with pkgs
echo -ne "
sudo $auto_pkg_installer firefox-esr pavucontrol synaptic gparted
sudo $auto_pkg_installer chromium obs-sudio steam
sudo $auto_pkg_installer kitty alacritty cool-retro-term
sudo $auto_pkg_installer kate
#sudo $auto_pkg_installer grub-customizer
sudo $auto_pkg_installer flatpak

#discord vivaldi teamspeak
brbinstall_setup_miscsetup_tar-opt-install
brbinstall_setup_miscsetup_bottom-deb
brbinstall_setup_miscsetup_vmtools
#wezterm

#compile iced https://github.com/iced-rs/iced
#compile bazaar https://github.com/hojjatabdollahi/bazaar

anydesk(remove from startup and do the security)
atom(replace with kate maybe) ghostwritter goverlay(MangoHud) bottom caffeine(if it works ?)
3d-ascii-viewer-c
Unigine heaven to try the gpu

#Exe : DragonRaja Notepad++ Kara Kate scan-app

metadatacleaner obsidian(try logseq ?) boop-gtk
gtk theme used in flatpak

add plasma-setup r3 and Hyprland(compiled if possible)

check (for the swap) fstab (blkid fsck) --> neomint too (systemd slow otherwise) --> check for zram (the md)

setup all the functionning git for deb brb Bo misc etc...
"

#other program with flatpak
echo -ne "
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub de.haeckerfelix.Shortwave
flatpak install -y flathub com.usebottles.bottles
flatpak install -y flathub com.github.flxzt.rnote
flatpak install -y flathub fyi.zoey.TeX-Match

#other
flatpak install -y flathub org.gnome.gitlab.YaLTeR.VideoTrimmer
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

#check startjobs from systemd
#check les services

#https://github.com/Antynea/grub-btrfs
#check os-prober

#is there a way to see output in the terminal and put it in a log too ?
#yes using script

#i3 --> r3 theming
#https://github.com/maestrogerardo/i3-gaps-deb
#sudo apt-mark hold i3 i3-wm
#https://askubuntu.com/questions/18654/how-to-prevent-updating-of-a-specific-package


}



brbinstall_flavoring_neobian_neobian () {
echo -ne "
==============================================================================
Running neobian
==============================================================================
"
brbinstall_setup_commands_script-typescript

brbinstall_distrib_deb-based_debian-based_run-script

brbinstall_setup_server_distance

brbinstall_setup_server_allow-closed-laptop-lid

brbinstall_setup_server_numlock-for-tty

#brbinstall_distrib_deb-based_debian-based_plymouth-unshow
#sudo systemctl disable lightdm

brbinstall_theming_plymouth_prepare

brbinstall_theming_plymouth_spinner-lin

brbinstall_theming_plymouth_set "spinner-lin"

brbinstall_flavoring_neobian_setup-xfce

brbinstall_setup_server_start-with-display

brbinstall_flavoring_neobian_theming-xfce

#brbinstall_distrib_deb-based_debian-based_switch-ver "bookworm" "trixie"

#brbinstall_distrib_deb-based_debian-based_add-backports
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
