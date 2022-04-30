#!/bin/bash

brbinstall_theming_icon_papirus () {
echo -ne "
------------------------------------------------------------------------------
papirus-icon-theme installation
------------------------------------------------------------------------------
"
sudo wget -qO- https://git.io/papirus-icon-theme-install | sh
sudo wget -qO- https://git.io/papirus-folders-install | sh
}

brbinstall_theming_icon_tela () {
echo -ne "
------------------------------------------------------------------------------
tela-icon-theme installation
------------------------------------------------------------------------------
"
if [ "$1" = "" ]
then
  optionUsed=""
fi
git clone https://github.com/vinceliuice/Tela-icon-theme $initialCacheFolder/Tela-icon-theme
cd $initialCacheFolder/Tela-icon-theme
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_tela_circle () {
echo -ne "
------------------------------------------------------------------------------
tela-circle-icon-theme installation
------------------------------------------------------------------------------
"
if [ "$1" = "" ]
then
  optionUsed=""
fi
git clone https://github.com/vinceliuice/Tela-circle-icon-theme $initialCacheFolder/Tela-circle-icon-theme
cd $initialCacheFolder/Tela-circle-icon-theme
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_numix_both () {
echo -ne "
------------------------------------------------------------------------------
numix-icon-theme & circle installation
------------------------------------------------------------------------------
"
#sudo $auto_pkg_installer numix-icon-theme
#sudo $auto_pkg_installer numix-icon-theme-circle

git clone https://github.com/numixproject/numix-icon-theme $initialCacheFolder/numix-icon-theme
cd $initialCacheFolder/numix-icon-theme
sudo cp -r Numix/ /usr/share/icons/Numix/
sudo cp -r Numix-Light/ /usr/share/icons/Numix-Light/

git clone https://github.com/numixproject/numix-icon-theme-circle $initialCacheFolder/numix-icon-theme-circle
cd $initialCacheFolder/numix-icon-theme-circle
sudo cp -r Numix-Circle/ /usr/share/icons/Numix-Circle/
sudo cp -r Numix-Circle-Light/ /usr/share/icons/Numix-Circle-Light/
}

brbinstall_theming_icon_colloid () {
echo -ne "
------------------------------------------------------------------------------
colloid-icon-theme installation
------------------------------------------------------------------------------
"
if [ "$1" = "" ]
then
  optionUsed=""
fi
git clone https://github.com/vinceliuice/Colloid-icon-theme $initialCacheFolder/Colloid-icon-theme
cd $initialCacheFolder/Colloid-icon-theme
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_fluent () {
echo -ne "
------------------------------------------------------------------------------
fluent-icon-theme installation
------------------------------------------------------------------------------
"
if [ "$1" = "" ]
then
  optionUsed=""
fi
git clone https://github.com/vinceliuice/Fluent-icon-theme $initialCacheFolder/Fluent-icon-theme
cd $initialCacheFolder/Fluent-icon-theme
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_yarupp () {
echo -ne "
------------------------------------------------------------------------------
Yaru++-icon-theme Installation
------------------------------------------------------------------------------
"
#root directory
#yaru++ Color
#https://github.com/Bonandry/yaru-plus
wget -qO- https://raw.githubusercontent.com/Bonandry/yaru-plus/master/install.sh | sh
}

brbinstall_theming_icon_zafiro () {
echo -ne "
------------------------------------------------------------------------------
Zafiro-icons installation
------------------------------------------------------------------------------
"
git clone https://github.com/zayronxio/Zafiro-icons $initialCacheFolder/Zafiro-icons
cd $initialCacheFolder
sudo cp -r Zafiro-icons/ /usr/share/icons/Zafiro-icons/
}
