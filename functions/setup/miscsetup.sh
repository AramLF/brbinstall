#!/bin/bash

brbinstall_setup_miscsetup_flatpak-installation () {
echo -ne "
==================================brbinstall==================================
Set flatpak (need to be in the distro repos)
==============================================================================
"
sudo $auto_pkg_installer flatpak
}

brbinstall_setup_miscsetup_flathub () {
echo -ne "
==================================brbinstall==================================
Set flathub
==============================================================================
"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}

brbinstall_setup_miscsetup_flatpak-override () {
echo -ne "
==================================brbinstall==================================
Flatpak override filesystem theme
==============================================================================
"
sudo flatpak override --filesystem=~/.themes
}

brbinstall_setup_miscsetup_setup-flatpak () {
echo -ne "
==================================brbinstall==================================
Flatpak setup (run)
==============================================================================
"
brbinstall_setup_miscsetup_flatpak-installation

brbinstall_setup_miscsetup_flathub

brbinstall_setup_miscsetup_flatpak-override
}

brbinstall_setup_miscsetup_nixpkg () {
echo -ne "
==================================brbinstall==================================
Set nixpkg
==============================================================================
"
#nix pkg manager on other distribs
#https://ariya.io/2020/05/nix-package-manager-on-ubuntu-or-debian
#https://doc.ubuntu-fr.org/nix
#https://search.nixos.org/packages
#sudo mkdir /nix
#sudo chown user /nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon
#echo ". $HOME/.nix-profile/etc/profile.d/nix.sh" >> ~/.bashrc
#source ~/.bashrc
#nix-channel --add https://nixos.org/channels/nixos-21.05 nixpkgs
#nix-channel --update
#nix-env -i hello
#nix-env -iA nixpkgs.geany
#echo 'export XDG_DATA_DIRS=$HOME/.nix-profile/share:$HOME/.share:$XDG_DATA_DIRS' >> /etc/profile.d/nix.sh
#nix search gcompris #doesnt work
#. /home/user/.nix-profile/etc/profile.d/nix.sh
}

brbinstall_setup_miscsetup_nix-echo-install-help () {
echo -ne "
==================================brbinstall==================================
Help for nix install
==============================================================================
"
echo -ne '
#install curl xz first
#https://search.nixos.org/
#https://nixos.org/
#steamdeck nix : https://www.youtube.com/watch?v=ttOs5iWgNzk&t

sh <(curl -L https://nixos.org/nix/install) --no-daemon
echo ". $HOME/.nix-profile/etc/profile.d/nix.sh" >> ~/.bashrc
nix-env -iA nixpkgs.hello
mkdir $HOME/.local/share/applications
sudo ln -s $HOME/.nix-profile/usr/share/applications/* $HOME/.local/share/applications/
#or
sudo ln -s $HOME/.nix-profile/usr/share/applications/* /usr/share/applications/
'
echo -ne "
sudo sh -c \"echo export 'XDG_DATA_DIRS=\$HOME/.nix-profile/share:\$HOME/.share:\$XDG_DATA_DIRS' >> /etc/profile.d/nix.sh\"
"
}

brbinstall_setup_miscsetup_nix-wrapper-opengl () {
echo -ne "
==================================brbinstall==================================
Add wrapper for nix opengl
==============================================================================
"
#https://github.com/guibou/nixGL
nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl && nix-channel --update
nix-env -iA nixgl.auto.nixGLDefault   # or replace `nixGLDefault` with your desired wrapper
echo -ne "
example : nixGL kitty
"
}

brbinstall_setup_miscsetup_path () {
echo -ne "
==================================brbinstall==================================
PATH variable
==============================================================================
"
#change it ? (be careful)

# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi

# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/.local/bin" ] ; then
#    PATH="$HOME/.local/bin:$PATH"
#fi
#Debian
echo -ne '
$PATH on Debian
/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
'
#Ubuntu/LinuxMint
echo -ne '
$PATH on Linux Mint
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
'
#Ubuntu/KDENeon
echo -ne '
$PATH on KDENeon
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
'
#openSuse
echo -ne '
$PATH on OpenSuse
/home/$USER/bin:/usr/local/bin:/usr/bin:/bin
'
#Arch ? unsure
echo -ne '
PATH on Arch ?
/usr/local/sbin:/usr/local/bin:/usr/bin
'
#Mageia
echo -ne '
$PATH on Mageia
/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/local/sbin:/usr/sbin:/usr/lib64/qt5/bin:/home/$USER/.local/bin:/home/$USER/bin
'
#VoidLinux
echo -ne '
$PATH on VoidLinux
/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
'
#Fedora
echo -ne '
$PATH on Fedora : 
/home/$USER/.local/bin:/home/$USER/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin
'
#AlpineLinux
echo -ne '
$PATH on Alpine :
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
'

}

brbinstall_setup_miscsetup_test-icons-fonts () {
echo -ne "
==================================brbinstall==================================
Font with icons
==============================================================================
"
echo -ne "


ﲁ
"

}

brbinstall_setup_miscsetup_tar-opt-install () {
echo -ne "
==================================brbinstall==================================
tar.gz opt install
==============================================================================
"
echo -ne "
#install discord with a tar.gz for example
#https://itsfoss.com/install-discord-linux/
sudo tar -xvzf discord-0.0.10.tar.gz -C /opt
sudo ln -sf /opt/Discord/Discord /usr/bin/Discord
sudo nano /opt/Discord/discord.desktop
#Exec=/usr/bin/Discord
#Icon=/opt/Discord/discord.png #not necessary
sudo cp -r /opt/Discord/discord.desktop /usr/share/applications
"

}

brbinstall_setup_miscsetup_check-wifi-card () {
echo -ne "
==================================brbinstall==================================
check the wifi card
==============================================================================
"
#check for example https://doc.ubuntu-fr.org/wifi_broadcom_bcm43xx
#ifconfig
#lspci -nn |grep Network
#sudo dpkg -i broadcom-sta-dkms*
#sudo modprobe wl
echo -ne "
ifconfig
lspci -nn |grep Network
"

}

brbinstall_setup_miscsetup_libadwaita-script () {
echo -ne "
==================================brbinstall==================================
Script for theming libadwaita
==============================================================================
"
#only work on python 3.10 (needs to be modified to be used on older python)
git clone https://github.com/odziom91/libadwaita-theme-changer $initialCacheFolder/libadwaita-theme-changer
cd $initialCacheFolder/libadwaita-theme-changer
./libadwaita-tc.py
}



brbinstall_setup_miscsetup_vmtools () {
echo -ne "
==================================brbinstall==================================
Getting and setup open vm tools
==============================================================================
"
#specific use case it should be improved
sudo $auto_pkg_installer open-vm-tools
sudo $auto_pkg_installer open-vm-tools-desktop

systemctl enable vmtoolsd.service
#rc-update add <service> <runlevel>

}

brbinstall_setup_miscsetup_unimatrix () {
echo -ne "
==================================brbinstall==================================
Getting unimatrix
==============================================================================
"
#unimatrix -n -s 96 -l 'o'
sudo $auto_pkg_installer wget
sudo wget https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -O /usr/local/bin/unimatrix
sudo chmod a+rx /usr/local/bin/unimatrix
}

brbinstall_setup_miscsetup_cava () {
echo -ne "
==================================brbinstall==================================
Getting cava
==============================================================================
"
#maybe more idk
sudo $auto_pkg_installer cava

}

brbinstall_setup_miscsetup_bottom-deb () {
echo -ne "
==================================brbinstall==================================
Getting bottom
==============================================================================
"
#only deb for now
sudo $auto_pkg_installer curl
cd $initialCacheFolder/
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_0.6.8_amd64.deb
sudo dpkg -i bottom_0.6.8_amd64.deb

}
