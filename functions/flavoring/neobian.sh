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
sudo $auto_pkg_installer cockpit openssh-server
#sudo systemctl enable cockpit
#sudo systemctl status ssh
#ssh wvm@192.168.0.37

# add the close lid part

# add numlock part for tty in another function
#https://wiki.archlinux.org/title/Activating_numlock_on_bootup
echo -ne '#!/bin/bash

for tty in /dev/tty{1..6}
do
    /usr/bin/setleds -D +num < "$tty";
done
' | sudo tee /usr/local/bin/numlock >/dev/null

sudo chmod +x /usr/local/bin/numlock

echo -ne '[Unit]
Description=numlock

[Service]
ExecStart=/usr/local/bin/numlock
StandardInput=tty
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
' | sudo tee /etc/systemd/system/numlock.service >/dev/null

sudo chmod +x /etc/systemd/system/numlock.service

sudo systemctl enable numlock.service
#numlock end

#server end


sudo $auto_pkg_installer xfce4
#gnome-core

#sudo systemctl disable lightdm

sudo $auto_pkg_installer lightdm

sudo systemctl enable lightdm

sudo systemctl set-default graphical.target




#!!! need to add the xfw4 light one
#xfce4
#xfce4-goodies(term and nm tray and everything in it ?)<--(maybe avoid it ?) xfce4-whiskermenu-plugin
sudo $auto_pkg_installer mousepad
sudo $auto_pkg_installer nm-applet nm-tray
sudo $auto_pkg_installer lightdm-gtk-greeter-settings


sudo $auto_pkg_installer firefox pavucontrol ?


#check les services

#mix papirus and yaru ? pop-extended omg ?


#other
#wallpaper, icons, menuIcon(whiskermenu), systray icons, change time display, original font

#/etc/sddm.conf

brbinstall_theming_plymouth_prepare

brbinstall_theming_plymouth_spinner-lin

brbinstall_theming_plymouth_set "spinner-lin"

#i3
#https://github.com/maestrogerardo/i3-gaps-deb
#https://askubuntu.com/questions/18654/how-to-prevent-updating-of-a-specific-package


brbinstall_theming_gtk_adw-gtk3


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
