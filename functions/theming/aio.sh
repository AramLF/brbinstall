#!/bin/bash

brbinstall_theming_aio_yaru-clone () {
echo -ne "
==============================================================================
Ubuntu Yaru cloning
==============================================================================
"
git clone https://github.com/ubuntu/yaru $initialCacheFolder/yaru
cd $initialCacheFolder/yaru/
}

brbinstall_theming_aio_yaru-install () {
echo -ne "
==============================================================================
Ubuntu Yaru complete installation
==============================================================================
"
#need to add themes in the user folder too
cd $initialCacheFolder/yaru/
sudo rm -rf build/
git restore .
git pull
cp -v $initialPATH/dotfiles/custom/meson-custom-yaru.build meson.build
meson "build" --prefix=/usr > $initialCacheFolder/aio-yaru-1.txt
sudo ninja -C "build" install > $initialCacheFolder/aio-yaru-2.txt
echo -ne "
Logs can be found in $initialCacheFolder/aio-yaru-*.txt
"
}
