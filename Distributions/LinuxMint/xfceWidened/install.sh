#!/usr/bin/env bash
#------------------------------------------------------------------------------
#██████╗ ██████╗ ██████╗ ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
#██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
#██████╔╝██████╔╝██████╔╝██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
#██╔══██╗██╔══██╗██╔══██╗██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
#██████╔╝██║  ██║██████╔╝██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
#╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
#------------------------------------------------------------------------------
echo -ne "
------------------------------------------------------------------------------
██████╗ ██████╗ ██████╗ ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
██████╔╝██████╔╝██████╔╝██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
██╔══██╗██╔══██╗██╔══██╗██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
██████╔╝██║  ██║██████╔╝██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
------------------------------------------------------------------------------
Linux Mint 20.3 xfce into xfceWidened
------------------------------------------------------------------------------
"
#Linux Mint 20.3 xfce
#git added just in case
echo -ne "
------------------------------------------------------------------------------
Start of installation
------------------------------------------------------------------------------
"
sudo apt-get install -y htop neofetch ncdu git gcc grub-customizer baobab

mkdir ~/Documents/gigs -v

echo -ne "
------------------------------------------------------------------------------
duplicate brbinstall for dotfiles 
------------------------------------------------------------------------------
"
git clone https://github.com/AramLF/brbinstall ~/Documents/gigs/brbinstall
#duplicate so the folder path can be hardened (so the install.sh can be exe from everywhere)

echo -ne "
------------------------------------------------------------------------------
papirus-icon-theme installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://git.io/papirus-icon-theme-install | sh
sudo wget -qO- https://git.io/papirus-folders-install | sh
sudo papirus-folders -C paleorange --theme Papirus-Dark

echo -ne "
------------------------------------------------------------------------------
Qogir installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Qogir-theme ~/Documents/gigs/Qogir-theme
sudo ~/Documents/gigs/Qogir-theme/./install.sh
#sudo to install theme as root

echo -ne "
------------------------------------------------------------------------------
dockbarlike installation
------------------------------------------------------------------------------
"
sudo add-apt-repository -y ppa:xubuntu-dev/extras
sudo apt update
sudo apt install -y xfce4-docklike-plugin

echo -ne "
------------------------------------------------------------------------------
dotfiles replacement
------------------------------------------------------------------------------
"
#cp docklike-2.rc
cp ~/.config/xfce4/panel/docklike-2.rc ~/.config/xfce4/panel/backup-docklike-2.rc -v
cp ~/Documents/gigs/brbinstall/LinuxMint/xfceWidened/dotfiles/xfce4/panel/docklike-2.rc ~/.config/xfce4/panel/docklike-2.rc -v
#cp whiskermenu-1.rc
cp ~/.config/xfce4/panel/whiskermenu-1.rc ~/.config/xfce4/panel/backup-whiskermenu-1.rc -v
cp ~/Documents/gigs/brbinstall/LinuxMint/xfceWidened/dotfiles/xfce4/panel/whiskermenu-1.rc ~/.config/xfce4/panel/whiskermenu-1.rc -v
#cp xfce4-panel.xml
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backtup-xfce4-panel.xml -v
cp ~/Documents/gigs/brbinstall/LinuxMint/xfceWidened/dotfiles/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml -v
#cp icons.screen.latest.rc
cp ~/.config/xfce4/desktop/icons.screen.latest.rc ~/.config/xfce4/desktop/backup-icons.screen.latest.rc -v
cp ~/Documents/gigs/brbinstall/LinuxMint/xfceWidened/dotfiles/xfce4/desktop/icons.screen.latest.rc ~/.config/xfce4/desktop/icons.screen.latest.rc -v
#cp xfce4-desktop.xml
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/backup-xfce4-desktop.xml -v
cp ~/Documents/gigs/brbinstall/LinuxMint/xfceWidened/dotfiles/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml -v
#temp for now

echo -ne "
------------------------------------------------------------------------------
restart xfce panel
------------------------------------------------------------------------------
"
xfce4-panel --restart

echo -ne "
------------------------------------------------------------------------------
Changing theme
------------------------------------------------------------------------------
"
xfconf-query -c xsettings -p /Net/ThemeName -s "Mint-Y-Dark-Blue"
xfconf-query -c xfwm4 -p /general/theme -s Mint-Y-Dark-Blue
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"

echo -ne "
------------------------------------------------------------------------------
Installation finished, reboot recommended !
------------------------------------------------------------------------------
"

