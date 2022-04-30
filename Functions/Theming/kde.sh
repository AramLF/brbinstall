#!/bin/bash

brbinstall_theming_kde_vimix () {
echo -ne "
------------------------------------------------------------------------------
Vimix-kde installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/vimix-kde $initialPlaceHolder/vimix-kde
cd $initialPlaceHolder/vimix-kde
./install.sh
#sudo to install theme as root
}

brbinstall_theming_kde_materia () {
echo -ne "
------------------------------------------------------------------------------
Materia-kde installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/materia-kde/master/install.sh | sh
}

brbinstall_theming_kde_fluent () {
echo -ne "
------------------------------------------------------------------------------
Fluent-kde installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Fluent-kde $initialPlaceHolder/Fluent-kde
cd $initialPlaceHolder/Fluent-kde
./install.sh
#sudo to install theme as root
}

brbinstall_theming_kde_colloid () {
echo -ne "
------------------------------------------------------------------------------
Colloid-kde installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Colloid-kde $initialPlaceHolder/Colloid-kde
cd $initialPlaceHolder/Colloid-kde
./install.sh
#sudo to install theme as root
}

brbinstall_theming_kde_catppuccin () {
echo -ne "
------------------------------------------------------------------------------
Catppuccin-kde installation
------------------------------------------------------------------------------
"
git clone https://github.com/catppuccin/kde $initialPlaceHolder/kde
cd $initialPlaceHolder/kde/kde-store-archives/global-theme
kpackagetool5 -i catppuccin.tar.gz
}
