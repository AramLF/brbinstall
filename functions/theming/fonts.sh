#!/bin/bash

brbinstall_theming_fonts_all (){
echo -ne "
==============================================================================
All fonts installation
==============================================================================
"
mkdir -p /usr/share/fonts/truetype/
mkdir -p /usr/share/fonts/opentype/

brbinstall_theming_fonts_fira-mozilla-all
}

brbinstall_theming_fonts_fira-mozilla-all (){
echo -ne "
==============================================================================
Fira mozilla fonts installation
==============================================================================
"
mkdir -p /usr/share/fonts/truetype/
mkdir -p /usr/share/fonts/opentype/

git clone https://github.com/mozilla/Fira $initialCacheFolder/Fira

cd $initialCacheFolder/Fira/ttf/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/Fira/otf/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/
}
