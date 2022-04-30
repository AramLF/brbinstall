#!/bin/bash
cd ../../
source ./scriptSource.sh

brbinstall_template_tp1_title

brbinstall_template_tp1_start

brbinstall_de_gnome_add_dependencies

brbinstall_distrib_arch_dependencies

brbinstall_distrib_arch_yay

brbinstall_distrib_arch_gdm-tools

brbinstall_distrib_arch_gnome-extensions

brbinstall_template_tp1_end
