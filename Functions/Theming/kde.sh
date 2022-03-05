#!/bin/bash

theming_kde_vimix () {
echo -ne "
------------------------------------------------------------------------------
Vimix-kde installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/vimix-kde $initialPlacement/vimix-kde
cd $initialPlacement/vimix-kde
./install.sh
#sudo to install theme as root
}

theming_kde_materia () {
echo -ne "
------------------------------------------------------------------------------
Materia-kde installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/materia-kde/master/install.sh | sh
}

theming_kde_fluent () {
echo -ne "
------------------------------------------------------------------------------
Fluent-kde installation
------------------------------------------------------------------------------
"
git clone https://github.com/vinceliuice/Fluent-kde $initialPlacement/Fluent-kde
cd $initialPlacement/Fluent-kde
./install.sh
#sudo to install theme as root
}
