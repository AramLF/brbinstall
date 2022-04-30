#!/bin/bash

brbinstall_theming_gtk_qogir () {
echo -ne "
------------------------------------------------------------------------------
Qogir installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Qogir-theme $initialPlaceHolder/Qogir-theme
cd $initialPlaceHolder/Qogir-theme/
sudo ./install.sh
#sudo to install theme as root
}

brbinstall_theming_gtk_vimix () {
echo -ne "
------------------------------------------------------------------------------
Vimix installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/vimix-gtk-themes $initialPlaceHolder/vimix-gtk-themes
cd $initialPlaceHolder/vimix-gtk-themes
sudo ./install.sh -c dark -s compact --all
#sudo to install theme as root
}

brbinstall_theming_gtk_orchis () {
echo -ne "
------------------------------------------------------------------------------
Orchis installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Orchis-theme $initialPlaceHolder/Orchis-theme
cd $initialPlaceHolder/Orchis-theme
sudo ./install.sh --theme all --color dark
#sudo to install theme as root
}

brbinstall_theming_gtk_graphite () {
echo -ne "
------------------------------------------------------------------------------
Graphite installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Graphite-gtk-theme $initialPlaceHolder/Graphite-gtk-theme
cd $initialPlaceHolder/Graphite-gtk-theme
sudo ./install.sh --theme all --tweaks rimless --size compact --color dark
#sudo to install theme as root
}

brbinstall_theming_gtk_matcha () {
echo -ne "
------------------------------------------------------------------------------
Matcha installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Matcha-gtk-theme $initialPlaceHolder/Matcha-gtk-theme
cd $initialPlaceHolder/Matcha-gtk-theme
sudo ./install.sh --color dark
#sudo to install theme as root
}

brbinstall_theming_gtk_colloid () {
echo -ne "
------------------------------------------------------------------------------
Colloid installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Colloid-gtk-theme $initialPlaceHolder/Colloid-gtk-theme
cd $initialPlaceHolder/Colloid-gtk-theme
sudo ./install.sh --color dark --size compact
#sudo to install theme as root
}

brbinstall_theming_gtk_fluent () {
echo -ne "
------------------------------------------------------------------------------
Fluent installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Fluent-gtk-theme $initialPlaceHolder/Fluent-gtk-theme
cd $initialPlaceHolder/Fluent-gtk-theme
sudo ./install.sh --tweaks round
#sudo to install theme as root
}

brbinstall_theming_gtk_catppuccin () {
echo -ne "
------------------------------------------------------------------------------
Catppuccin-gtk-theme installation
------------------------------------------------------------------------------
"
cd $initialPlaceHolder

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
}
