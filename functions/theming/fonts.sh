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

brbinstall_theming_fonts_spline-sans-all

brbinstall_theming_fonts_ubuntu-all

brbinstall_theming_fonts_font-awesome-all

brbinstall_theming_fonts_work-sans-all

brbinstall_theming_fonts_caskdaydia-cove-all

brbinstall_theming_fonts_cascadia-all
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

git clone --depth=1 https://github.com/SorkinType/SplineSans $initialCacheFolder/SplineSans

cd $initialCacheFolder/SplineSans/fonts/ttf/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/SplineSans/fonts/otf/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/

git clone --depth=1 https://github.com/SorkinType/SplineSansMono $initialCacheFolder/SplineSansMono

cd $initialCacheFolder/SplineSansMono/fonts/ttf/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/SplineSansMono/fonts/otf/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/
}

brbinstall_theming_fonts_ubuntu-all (){
echo -ne "
==============================================================================
Ubuntu all fonts installation
==============================================================================
"
sudo mkdir -p /usr/share/fonts/truetype/
sudo mkdir -p /usr/share/fonts/opentype/

cd $initialCacheFolder/

wget https://assets.ubuntu.com/v1/0cef8205-ubuntu-font-family-0.83.zip
unzip 0cef8205-ubuntu-font-family-0.83.zip -d ubuntu-font-family
cd ubuntu-font-family/ubuntu-font-family-0.83/

chmod 755 *.ttf *.TTF *.otf *.OTF

sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/

}

brbinstall_theming_fonts_font-awesome-all (){
echo -ne "
==============================================================================
Font-Awesome fonts installation
==============================================================================
"
sudo mkdir -p /usr/share/fonts/truetype/
sudo mkdir -p /usr/share/fonts/opentype/

git clone --depth=1 https://github.com/FortAwesome/Font-Awesome $initialCacheFolder/Font-Awesome

cd $initialCacheFolder/Font-Awesome/otfs/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/

}

brbinstall_theming_fonts_work-sans-all (){
echo -ne "
==============================================================================
Work-Sans fonts installation
==============================================================================
"
sudo mkdir -p /usr/share/fonts/truetype/
sudo mkdir -p /usr/share/fonts/opentype/

git clone --depth=1 https://github.com/weiweihuanghuang/Work-Sans $initialCacheFolder/Work-Sans

cd $initialCacheFolder/Work-Sans/fonts/ttf/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/Work-Sans/fonts/otf/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/
}

brbinstall_theming_fonts_caskdaydia-cove-all (){
echo -ne "
==============================================================================
Caskaydia Cove fonts installation
==============================================================================
"
sudo mkdir -p /usr/share/fonts/truetype/
sudo mkdir -p /usr/share/fonts/opentype/

git clone --depth=1 https://github.com/eliheuer/caskaydia-cove $initialCacheFolder/caskaydia-cove

cd $initialCacheFolder/caskaydia-cove/fonts/ttf/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/caskaydia-cove/fonts/otf/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/
}

brbinstall_theming_fonts_cascadia-all (){
echo -ne "
==============================================================================
Cascadia Code/Mono all fonts installation
==============================================================================
"
sudo mkdir -p /usr/share/fonts/truetype/
sudo mkdir -p /usr/share/fonts/opentype/

cd $initialCacheFolder/

wget https://github.com/microsoft/cascadia-code/releases/download/v2111.01/CascadiaCode-2111.01.zip
unzip CascadiaCode-2111.01.zip -d Cascadia-2111

cd $initialCacheFolder/Cascadia-2111/ttf/static/
sudo cp -vr *.ttf *.TTF /usr/share/fonts/truetype/

cd $initialCacheFolder/Cascadia-2111/otf/static/
sudo cp -vr *.otf *.OTF /usr/share/fonts/opentype/

}
