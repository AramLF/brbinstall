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
Debian gnomed
------------------------------------------------------------------------------
"
#Debian gnomed
echo -ne "
------------------------------------------------------------------------------
Start of installation
------------------------------------------------------------------------------
"
sudo apt-get install -y htop neofetch ncdu git gcc synaptic wget curl unzip
sudo apt-get install -y plymouth
#maybe add plymouth-themes
sudo apt-get install -y command-not-found
#shopt -s expand_aliases

mkdir ~/Documents/gigs -v

echo -ne "
------------------------------------------------------------------------------
papirus-icon-theme installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://git.io/papirus-icon-theme-install | sh
sudo wget -qO- https://git.io/papirus-folders-install | sh

echo -ne "
------------------------------------------------------------------------------
Catppuccin-gtk-theme installation
------------------------------------------------------------------------------
"
cd ~/Documents/gigs

wget https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/evening-sky.png
sudo mv evening-sky.png /usr/share/backgrounds/evening-sky.png

wget https://github.com/catppuccin/gtk/releases/download/update_27_01_22/Catppuccin-dark-compact-hdpi.zip
wget https://github.com/catppuccin/gtk/releases/download/update_27_01_22/Catppuccin-dark-compact-xhdpi.zip
wget https://github.com/catppuccin/gtk/releases/download/update_27_01_22/Catppuccin-dark-compact.zip

unzip Catppuccin-dark-compact-hdpi.zip
unzip Catppuccin-dark-compact-xhdpi.zip
unzip Catppuccin-dark-compact.zip

sudo mv Catppuccin-dark-compact-hdpi /usr/share/themes/Catppuccin-dark-compact-hdpi --backup
sudo mv Catppuccin-dark-compact-xhdpi /usr/share/themes/Catppuccin-dark-compact-xhdpi --backup
sudo mv Catppuccin-dark-compact /usr/share/themes/Catppuccin-dark-compact --backup

rm -rf Catppuccin-dark-compact-hdpi.zip
rm -rf Catppuccin-dark-compact-xhdpi.zip
rm -rf Catppuccin-dark-compact.zip

echo -ne "
------------------------------------------------------------------------------
Catppuccin-gnome-terminal installation
------------------------------------------------------------------------------
"
echo -ne "
Do you want a personnal theme for gnome-terminal ?
Yes ? - then please create a new profile named catppuccin and press Enter
No ? - then press n and Enter 
"
read -r -p "Not implemented yet please create a new profile and press Enter " response
#case "$response" in
#    [yY][eE][sS]|[yY]) 
#        do_something
#        ;;
#    *)
#        do_something_else
#        ;;
#esac
git clone https://github.com/catppuccin/gnome-terminal ~/Documents/gigs/gnome-terminal
cd ~/Documents/gigs/gnome-terminal
echo YES |./install.sh "catppuccin"

echo -ne "
------------------------------------------------------------------------------
Removing gnome-software at startup
------------------------------------------------------------------------------
"
mkdir -pv ~/.config/autostart && cp /etc/xdg/autostart/gnome-software-service.desktop ~/.config/autostart/
echo "X-GNOME-Autostart-enabled=false" >> ~/.config/autostart/gnome-software-service.desktop
dconf write /org/gnome/desktop/search-providers/disabled "['org.gnome.Software.desktop']"
dconf write /org/gnome/software/allow-updates false
dconf write /org/gnome/software/download-updates false
#might change allow-updates

echo -ne "
------------------------------------------------------------------------------
gdm-tools installation
------------------------------------------------------------------------------
"
git clone --depth=1 https://github.com/realmazharhussain/gdm-tools.git ~/Documents/gigs/gdm-tools
cd ~/Documents/gigs/gdm-tools
echo y|./install.sh
set-gdm-theme -s Catppuccin-dark-compact

echo -ne "
------------------------------------------------------------------------------
Changing theme
------------------------------------------------------------------------------
"
gsettings set org.gnome.desktop.interface gtk-theme "Catppuccin-dark-compact"
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.wm.preferences theme "Catppuccin-dark-compact"
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.shell.extensions.user-theme name "Catppuccin-dark-compact"
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/evening-sky.png

echo -ne "
------------------------------------------------------------------------------
Changing PS1 Prompt and adding plymouth
------------------------------------------------------------------------------
"
#sed over cp because I can (and avoid too many dotfiles)
sed -i 's#\${debian_chroot:+(\$debian_chroot)}\\\[\\033\[01;32m\\]\\u@\\h\\\[\\033\[00m\\]:\\\[\\033\[01;34m\\]\\w\\\[\\033\[00m\\]\\\$ #\\\[\\033\[01;37m\\]┌─\[\\\[\\033\[01;32m\\]\\u\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;36m\\]\\h\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;33m\\]\\w\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\n\\\[\\033\[01;37m\\]└─\[\\\[\\033\[01;33m\\]\$\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\\[\\033\[00;37m\\] #g' ~/.bashrc

sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/g' /etc/default/grub
sudo update-grub

echo -ne "
------------------------------------------------------------------------------
Updating a few more things...
------------------------------------------------------------------------------
"
#alias cnf='command-not-found'
echo "alias cnf='command-not-found'" >> ~/.bash_aliases
sudo apt-get update

echo -ne "
------------------------------------------------------------------------------
Installation finished, reboot recommended !
------------------------------------------------------------------------------
"

