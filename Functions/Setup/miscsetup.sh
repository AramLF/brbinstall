#!/bin/bash

setup_miscsetup_flathub () {
echo -ne "
------------------------------------------------------------------------------
Set flathub
------------------------------------------------------------------------------
"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}
