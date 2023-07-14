#!/bin/bash

brbinstall_theming_dependencies_global () {
echo -ne "
==================================brbinstall==================================
Some dependencies for theming
==============================================================================
"
sudo $auto_pkg_installer wget
sudo $auto_pkg_installer sassc
}

brbinstall_theming_dependencies_compiling () {
echo -ne "
==================================brbinstall==================================
Dependencies compiling for theming
==============================================================================
"
#libglib2.0-dev
sudo $auto_pkg_installer meson
}
