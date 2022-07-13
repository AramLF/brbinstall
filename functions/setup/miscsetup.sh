#!/bin/bash

brbinstall_setup_miscsetup_flathub () {
echo -ne "
==============================================================================
Set flathub
==============================================================================
"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}

brbinstall_setup_miscsetup_flatpak-override () {
echo -ne "
==============================================================================
Flatpak override filesystem theme
==============================================================================
"
sudo flatpak override --filesystem=~/.themes
}

brbinstall_setup_miscsetup_nixpkg () {
echo -ne "
==============================================================================
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
}

brbinstall_setup_miscsetup_path () {
echo -ne "
==============================================================================
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
echo "\$PATH on Debian"
echo "/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
echo ""
#Ubuntu/LinuxMint
echo "\$PATH on Linux Mint"
echo "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
echo ""
#Ubuntu/KDENeon
echo "\$PATH on KDENeon"
echo "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
echo ""
#openSuse
echo "\$PATH on OpenSuse"
echo "/home/$USER/bin:/usr/local/bin:/usr/bin:/bin"
echo ""
#Arch ? unsure
echo "\$PATH on Arch ?"
echo "/usr/local/sbin:/usr/local/bin:/usr/bin"
echo ""
#Mageia
echo "\$PATH on Mageia"
echo "/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/local/sbin:/usr/sbin:/usr/lib64/qt5/bin:/home/$USER/.local/bin:/home/$USER/bin"
echo ""
#VoidLinux
echo "\$PATH on VoidLinux"
echo "/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
echo ""
#Fedora
echo "\$PATH on Fedora"
echo "/home/$USER/.local/bin:/home/$USER/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"
echo ""


}

brbinstall_setup_miscsetup_tar-opt-install () {
echo -ne "
==============================================================================
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

brbinstall_setup_miscsetup_libadwaita-script () {
echo -ne "
==============================================================================
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
==============================================================================
Getting and setup open vm tools
==============================================================================
"
#specific use case it should be improved
sudo $auto_pkg_installer open-vm-tools

systemctl enable vmtoolsd.service
#rc-update add <service> <runlevel>

}

brbinstall_setup_miscsetup_unimatrix () {
echo -ne "
==============================================================================
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
==============================================================================
Getting cava
==============================================================================
"
#maybe more idk
sudo $auto_pkg_installer cava

}
