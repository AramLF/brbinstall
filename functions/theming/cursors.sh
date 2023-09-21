#!/bin/bash

brbinstall_theming_cursors_all () {
echo -ne "
==================================brbinstall==================================
all cursors theme installation
==============================================================================
"
brbinstall_theming_cursors_qogir

brbinstall_theming_cursors_adwaita-cursors

}

brbinstall_theming_cursors_qogir () {
echo -ne "
==================================brbinstall==================================
gogir-cursors-theme installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed=""
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Qogir-icon-theme $initialCacheFolder/Qogir-icon-theme
cd $initialCacheFolder/Qogir-icon-theme/src/cursors
sudo ./install.sh $optionUsed
}


brbinstall_theming_cursors_adwaita-cursors () {
echo -ne "
==================================brbinstall==================================
adwaita-cursors-theme installation
==============================================================================
"
cd $initialCacheFolder/
wget https://github.com/manu-mannattil/adwaita-cursors/releases/download/v1.2/adwaita-cursors.tar.gz
#no using  -xzvf
tar xzf adwaita-cursors.tar.gz 
sudo mkdir -p /usr/share/icons/Adwaita-cursors/cursors/
sudo mv adwaita-cursors/Adwaita/cursors /usr/share/icons/Adwaita-cursors/
}