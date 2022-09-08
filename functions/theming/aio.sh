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
  brbinstall_theming_dependencies_global
  brbinstall_theming_dependencies_compiling
  cd $initialCacheFolder/yaru/
  sudo rm -rf build/
  git restore .
  git pull
  cp -v $initialPath/dotfiles/custom/meson-custom-yaru.build meson.build
  echo -ne "
  Installing...
  Logs can be found in $initialCacheFolder/aio-yaru-*.txt
  "
  meson "build" --prefix=/usr > $initialCacheFolder/aio-yaru-1.txt
  sudo ninja -C "build" install > $initialCacheFolder/aio-yaru-2.txt

}

brbinstall_theming_aio_yaru-whole-installation () {

  brbinstall_theming_aio_yaru-clone

  brbinstall_theming_aio_yaru-install

}
