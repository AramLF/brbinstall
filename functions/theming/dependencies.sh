#!/bin/bash

brbinstall_theming_dependencies_global () {
echo -ne "
==============================================================================
Some dependencies for theming
==============================================================================
"
sudo $auto_pkg_installer wget
sudo $auto_pkg_installer sassc
}

brbinstall_theming_dependencies_compiling () {
echo -ne "
==============================================================================
Dependencies compiling for theming
==============================================================================
"
sudo $auto_pkg_installer meson
}
