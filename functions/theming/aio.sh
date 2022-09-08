#!/bin/bash

brbinstall_theming_aio_yaru-clone () {
echo -ne "
==============================================================================
Ubuntu Yaru
==============================================================================
"
git clone https://github.com/ubuntu/yaru $initialCacheFolder/yaru
cd $initialCacheFolder/yaru/
}

brbinstall_theming_aio_yaru-install () {
echo -ne "
==============================================================================
Ubuntu Yaru
==============================================================================
"
#need to add themes in the user folder too
cd $initialCacheFolder/yaru/
sudo rm -rf build/
git restore .
git pull
cp -v $initialPATH/dotfiles/custom/meson-custom-yaru.build meson.build
meson "build" --prefix=/usr
sudo ninja -C "build" install
}
