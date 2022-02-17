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
