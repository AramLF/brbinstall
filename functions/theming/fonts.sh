#!/bin/bash

brbinstall_theming_fonts_all (){
echo -ne "
==============================================================================
All fonts installation
==============================================================================
"
sudo mkdir -p /usr/share/fonts/truetype/
sudo mkdir -p /usr/share/fonts/opentype/

brbinstall_theming_fonts_fira-mozilla-all
}

brbinstall_theming_fonts_fira-mozilla-all (){
echo -ne "
==============================================================================
Fira mozilla fonts installation
==============================================================================
"
sudo mkdir -p /usr/share/fonts/truetype/
sudo mkdir -p /usr/share/fonts/opentype/

git clone --depth=1 https://github.com/mozilla/Fira $initialCacheFolder/Fira

cd $initialCacheFolder/Fira/ttf/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/Fira/otf/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/
}

brbinstall_theming_fonts_spline-sans-all (){
echo -ne "
==============================================================================
Spline Sans & Mono fonts installation
==============================================================================
"
sudo mkdir -p /usr/share/fonts/truetype/
sudo mkdir -p /usr/share/fonts/opentype/

git clone --depth=1 https://github.com/SorkinType/SplineSans $initialCacheFolder/SpineSans

cd $initialCacheFolder/SpineSans/fonts/ttf/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/SpineSans/fonts/otf/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/

git clone --depth=1 https://github.com/SorkinType/SplineSansMono $initialCacheFolder/SpineSansMono

cd $initialCacheFolder/SpineSansMono/fonts/ttf/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/SpineSansMono/fonts/otf/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/
}
