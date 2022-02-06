#!/bin/bash

template-fedora-version () {
echo -ne "Fedora 35
------------------------------------------------------------------------------
"
}

template-fedora-installs () {
sudo dnf install -y htop neofetch ncdu git gcc wget curl unzip
sudo dnf install -y gnome-tweaks
}
