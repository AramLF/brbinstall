#!/bin/bash

brbinstall_theming_icon_papirus () {
echo -ne "
==============================================================================
papirus-icon-theme installation
==============================================================================
"
sudo wget -qO- https://git.io/papirus-icon-theme-install | sh
sudo wget -qO- https://git.io/papirus-folders-install | sh
}

brbinstall_theming_icon_tela () {
echo -ne "
==============================================================================
tela-icon-theme installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed=""
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Tela-icon-theme $initialCacheFolder/Tela-icon-theme
cd $initialCacheFolder/Tela-icon-theme
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_tela-circle () {
echo -ne "
==============================================================================
tela-circle-icon-theme installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed=""
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Tela-circle-icon-theme $initialCacheFolder/Tela-circle-icon-theme
cd $initialCacheFolder/Tela-circle-icon-theme
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_numix-both () {
echo -ne "
==============================================================================
numix-icon-theme square & circle installation
==============================================================================
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

git clone https://github.com/numixproject/numix-icon-theme-square $initialCacheFolder/numix-icon-theme-square
cd $initialCacheFolder/numix-icon-theme-square
sudo cp -r Numix-Square/ /usr/share/icons/Numix-Square/
sudo cp -r Numix-Square-Light/ /usr/share/icons/Numix-Square-Light/
}

brbinstall_theming_icon_colloid () {
echo -ne "
==============================================================================
colloid-icon-theme installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed=""
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Colloid-icon-theme $initialCacheFolder/Colloid-icon-theme
cd $initialCacheFolder/Colloid-icon-theme
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_fluent () {
echo -ne "
==============================================================================
fluent-icon-theme installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed=""
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Fluent-icon-theme $initialCacheFolder/Fluent-icon-theme
cd $initialCacheFolder/Fluent-icon-theme
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_yarupp () {
echo -ne "
==============================================================================
Yaru++-icon-theme Installation
==============================================================================
"
#root directory
#yaru++ Color
#https://github.com/Bonandry/yaru-plus
wget -qO- https://raw.githubusercontent.com/Bonandry/yaru-plus/master/install.sh | sh
}

brbinstall_theming_icon_zafiro () {
echo -ne "
==============================================================================
Zafiro-icons installation
==============================================================================
"
git clone https://github.com/zayronxio/Zafiro-icons $initialCacheFolder/Zafiro-icons
cd $initialCacheFolder
sudo cp -r Zafiro-icons/ /usr/share/icons/Zafiro-icons/
}

brbinstall_theming_icon_nordzy () {
echo -ne "
==============================================================================
nordzy-icon-theme installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed=""
else
  optionUsed=$1
fi
git clone https://github.com/alvatip/Nordzy-icon $initialCacheFolder/Nordzy-icon
cd $initialCacheFolder/Nordzy-icon
sudo ./install.sh $optionUsed
}

brbinstall_theming_icon_pop-original () {
echo -ne "
==============================================================================
pop original icons installation
==============================================================================
"
git clone https://github.com/pop-os/icon-theme $initialCacheFolder/pop-icon-theme
cd $initialCacheFolder/pop-icon-theme
sudo cp -r Pop/ /usr/share/icons/Pop/
sudo cp -r Pop-Dark/ /usr/share/icons/Pop-Dark/
}

brbinstall_theming_icon_pop-extended () {
echo -ne "
==============================================================================
pop extended icons installation
==============================================================================
"
git clone https://github.com/kuroehanako/Pop-Extended $initialCacheFolder/Pop-Extended
cd $initialCacheFolder/Pop-Extended
sudo cp -r Pop-Extended/ /usr/share/icons/Pop-Extended/
sudo cp -r Pop-Extended-dark/ /usr/share/icons/Pop-Extended-dark/
sudo cp -r Pop-Extended-light/ /usr/share/icons/Pop-Extended-light/
}

brbinstall_theming_icon_taru-yaru () {
echo -ne "
==============================================================================
Taru icons (like yaru but with svg and for others DE) installation
==============================================================================
"
git clone https://github.com/kuroehanako/Taru-icons $initialCacheFolder/Taru-icons
cd $initialCacheFolder/Taru-icons
sudo cp -r Taru*/ /usr/share/icons/Taru*/
}
