#!/bin/bash
cd ../../
source ./scriptSource.sh

template-1-title

template-1-start

gnomed-add-dependencies

theming-gtk-dependencies

theming-icons-papirus

theming-icons-numix-circle

theming-gtk-graphite

theming-gtk-orchis

gnomed-remove-gnome-software-startup

gnomed-set-gdm-tools

gnomed-set-icons-theme

template-1-end
