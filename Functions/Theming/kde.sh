#!/bin/bash

theming-kde-vimix () {
echo -ne "
------------------------------------------------------------------------------
Vimix-kde installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/vimix-kde ~/gigs/vimix-kde
cd ~/gigs/vimix-kde
./install.sh
#sudo to install theme as root
}

theming-kde-materia () {
echo -ne "
------------------------------------------------------------------------------
Materia-kde installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/materia-kde/master/install.sh | sh
}

theming-kde-fluent () {
echo -ne "
------------------------------------------------------------------------------
Fluent-kde installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Fluent-kde ~/gigs/Fluent-kde
cd ~/gigs/Fluent-kde
./install.sh
#sudo to install theme as root
}
