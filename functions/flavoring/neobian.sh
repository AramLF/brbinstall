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

#server

#choisir utilitaires usuels du système



#Connexion wifi for debian server
#https://www.linuxtricks.fr/wiki/systemd-le-reseau-avec-systemd-networkd
#https://linuxhint.com/3-ways-to-connect-to-wifi-from-the-command-line-on-debian/
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

# ??? sudo $auto_pkg_installer network-manager
# sudo nmtui ???

#server
brbinstall_setup_server_distance

brbinstall_setup_server_allow-closed-laptop-lid

brbinstall_setup_server_numlock-for-tty
#server end


sudo $auto_pkg_installer xfce4
#gnome-core

sudo $auto_pkg_installer lightdm
#sudo systemctl disable lightdm

sudo systemctl enable lightdm

sudo systemctl set-default graphical.target

#other
brbinstall_setup_server_start-with-display



#!!! need to add the xfw4 light one
#xfce4
#xfce4-goodies(term and nm tray and everything in it ?)<--(maybe avoid it ?) xfce4-whiskermenu-plugin
sudo $auto_pkg_installer mousepad
sudo $auto_pkg_installer nm-applet nm-tray
sudo $auto_pkg_installer lightdm-gtk-greeter-settings


sudo $auto_pkg_installer firefox pavucontrol ?


#check les services

#mix papirus and yaru ? pop-extended omg ? --> taru icons and adw3 theme


#other
#wallpaper, icons, menuIcon(whiskermenu), systray icons, change time display, original font

#/etc/sddm.conf

brbinstall_theming_plymouth_prepare

brbinstall_theming_plymouth_spinner-lin

brbinstall_theming_plymouth_set "spinner-lin"

#i3
#https://github.com/maestrogerardo/i3-gaps-deb
#https://askubuntu.com/questions/18654/how-to-prevent-updating-of-a-specific-package



#theming
brbinstall_theming_gtk_adw-gtk3

brbinstall_de_xfce_set-xfwm4-theme "adw-gtk3-dark-small"

brbinstall_de_xfce_set-gtk-theme "adw-gtk3-dark"

brbinstall_theming_icon_taru-yaru

brbinstall_de_xfce_set-icon-theme "Taru-Breeze-dark"

brbinstall_theming_fonts_work-sans-all

brbinstall_theming_fonts_cascadia-all

brbinstall_de_xfce_set-font-gtk-theme "Work Sans 10"

brbinstall_de_xfce_set-xfwm4-font-theme "Work Sans 10"

brbinstall_de_xfce_set-font-monospace-gtk-theme "Cascadia Mono Regular 10"

brbinstall_theming_wallpaper_rands-walls-spe


#remove xfce bottom panel check https://forum.xfce.org/viewtopic.php?id=13717
#recolor top panel with #242424

#whiskermenu & remove the other one
sudo $auto_pkg_installer xfce4-whiskermenu-plugin xfce4-xkb-plugin xfce4-pulseaudio-plugin xfce4-power-manager
#Afficher sous forme d'arborescence, petite plus petite, Positionner (les catégories, le champ), icône et texte (Applications), catégories au survol

#workspace 2 lignes
#barre d'état(ajuster la taille, symboliques)
#greffon pulseaudio(with pavucontrol) power-manager disposition-clavier(système) Horloge Notification Afficher-bureau

#change le temps avec heure puis date

sudo $auto_pkg_installer plank
#plank au start d'xfce
#zoom sur icône : 130
#Paramètres Logiciels Navigateur Dossier Terminal



sudo $auto_pkg_installer lightdm-gtk-greeter-settings
#%H:%M %A %d/%m/%Y adw-gtk3-dark Taru-Breeze-dark Work-Sans-Regular-10 background

#list users
#/etc/lightdm/lightdm.conf
#greeter-hide-users=false #???? ça marche ap ?


#synaptic firefox

#peaufinage des fenêtres : placement --> grande au max


sudo $auto_pkg_installer network-manager-gnome blueman

#enlever les icônes sur le bureau (clic droit param)


#all the flatpaks
#shortwave radioparadise
echo -ne "
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub de.haeckerfelix.Shortwave
flatpak install -y flathub com.usebottles.bottles
flatpak install -y flathub fyi.zoey.TeX-Match

"

#songrec mousai videotrimmer

#amazing
#flatpak install flathub com.github.flxzt.rnote

#all the flatpaks
echo -ne "
other program pkgs ?
discord steam anydesk(remove from startup and do the security) atom (grub-customizer) firefox chromium obs-sudio vivaldi

alacritty kitty cool-retro-term
gparted
ghostwritter

"


#check startjobs from systemd


#https://github.com/Antynea/grub-btrfs
#check os-prober


#is there a way to see output in the terminal and put it in a log too ?
#yes using script



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
