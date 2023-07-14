#!/bin/bash

brbinstall_theming_gtk_unlock-libadwaita () {
echo -ne "
==================================brbinstall==================================
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
==================================brbinstall==================================
Put every system themes in the user themes folder
==============================================================================
"
mkdir -p /home/$USER/.themes
cp -r /usr/share/themes/* /home/$USER/.themes/
ls /home/$USER/.themes/
}

brbinstall_theming_gtk_adw-gtk3 () {
echo -ne "
==================================brbinstall==================================
adw-gtk3 installation
==============================================================================
"

#git clone --depth=1 https://github.com/lassekongo83/adw-gtk3 $initialCacheFolder/adw-gtk3
#cd $initialCacheFolder/adw-gtk3/

cd $initialCacheFolder/

wget https://github.com/lassekongo83/adw-gtk3/releases/download/v4.3/adw-gtk3v4-3.tar.xz

sudo tar -xvf adw-gtk3v4-3.tar.xz -C /usr/share/themes/

#mkdir -p /usr/share/themes/adwaitacross-dark/

#sudo cp -vr $initialPath/dotfiles/xfce/adwaitacross-dark/xfwm4 /usr/share/themes/adw-gtk3-dark/

git clone --depth=1 https://github.com/FabianOvrWrt/adw-xfwm4 $initialCacheFolder/adw-xfwm4
cd $initialCacheFolder/adw-xfwm4/
sudo cp -vr themes/* /usr/share/themes/


}


brbinstall_theming_gtk_qogir () {
echo -ne "
==================================brbinstall==================================
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
==================================brbinstall==================================
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
==================================brbinstall==================================
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
==================================brbinstall==================================
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
==================================brbinstall==================================
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
==================================brbinstall==================================
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
==================================brbinstall==================================
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
==================================brbinstall==================================
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
