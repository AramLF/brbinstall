#!/bin/bash

brbinstall_theming_gtk_unlock-libadwaita () {
echo -ne "
==============================================================================
Unlock libadwaita
==============================================================================
"
#should be improved
#can't work on python below 3.10 (it could work by changing "case" by "if")
git clone https://github.com/odziom91/libadwaita-theme-changer $initialCacheFolder/libadwaita-theme-changer
cd $initialCacheFolder/libadwaita-theme-changer/
./install.sh
}

brbinstall_theming_gtk_themes-system-to-user () {
echo -ne "
==============================================================================
Put every system themes in the user themes folder
==============================================================================
"
cp -r /usr/share/themes/* /home/$USER/.themes/
ls /home/$USER/.themes/
}


brbinstall_theming_gtk_qogir () {
echo -ne "
==============================================================================
Qogir installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed=""
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Qogir-theme $initialCacheFolder/Qogir-theme
cd $initialCacheFolder/Qogir-theme/
sudo ./install.sh $optionUsed
#sudo to install theme as root
}

brbinstall_theming_gtk_vimix () {
echo -ne "
==============================================================================
Vimix installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed="-c dark -s compact --all"
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/vimix-gtk-themes $initialCacheFolder/vimix-gtk-themes
cd $initialCacheFolder/vimix-gtk-themes
sudo ./install.sh $optionUsed
#sudo to install theme as root
}

brbinstall_theming_gtk_orchis () {
echo -ne "
==============================================================================
Orchis installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed="--theme all --color dark"
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Orchis-theme $initialCacheFolder/Orchis-theme
cd $initialCacheFolder/Orchis-theme
sudo ./install.sh $optionUsed
#sudo to install theme as root
}

brbinstall_theming_gtk_graphite () {
echo -ne "
==============================================================================
Graphite installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed="--theme all --tweaks rimless --size compact --color dark"
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Graphite-gtk-theme $initialCacheFolder/Graphite-gtk-theme
cd $initialCacheFolder/Graphite-gtk-theme
sudo ./install.sh $optionUsed
#sudo to install theme as root
}

brbinstall_theming_gtk_matcha () {
echo -ne "
==============================================================================
Matcha installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed="--color dark"
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Matcha-gtk-theme $initialCacheFolder/Matcha-gtk-theme
cd $initialCacheFolder/Matcha-gtk-theme
sudo ./install.sh $optionUsed
#sudo to install theme as root
}

brbinstall_theming_gtk_colloid () {
echo -ne "
==============================================================================
Colloid installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed="--color dark --size compact"
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Colloid-gtk-theme $initialCacheFolder/Colloid-gtk-theme
cd $initialCacheFolder/Colloid-gtk-theme
sudo ./install.sh $optionUsed
#sudo to install theme as root
}

brbinstall_theming_gtk_fluent () {
echo -ne "
==============================================================================
Fluent installation
==============================================================================
"
if [ "$1" = "" ]
then
  optionUsed="--tweaks round"
else
  optionUsed=$1
fi
git clone https://github.com/vinceliuice/Fluent-gtk-theme $initialCacheFolder/Fluent-gtk-theme
cd $initialCacheFolder/Fluent-gtk-theme
sudo ./install.sh $optionUsed
#sudo to install theme as root
}

brbinstall_theming_gtk_catppuccin () {
echo -ne "
==============================================================================
Catppuccin-gtk-theme installation
==============================================================================
"
cd $initialCacheFolder

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
