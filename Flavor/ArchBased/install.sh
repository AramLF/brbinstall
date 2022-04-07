#!/bin/bash
cd ../../
source ./scriptSource.sh

template_tp1_title

template_tp1_start

de_gnome_add_dependencies

distrib_arch_dependencies

distrib_arch_yay

distrib_arch_gdm-tools

distrib_arch_gnome-extensions

template_tp1_end
