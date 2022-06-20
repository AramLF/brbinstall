#!/bin/bash

brbinstall_distrib_rpm-based_fedora-based_dependencies () {
echo -ne "
==============================================================================
Dependencies Fedora installation
==============================================================================
"
#none for now
}

brbinstall_distrib_rpm-based_fedora-based_rpm-fusion () {
echo -ne "
==============================================================================
enable rpm fusion free & nonfree
==============================================================================
"
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#for gnome-software...
sudo dnf groupupdate -y core
}

brbinstall_distrib_rpm-based_fedora-based_codecs () {
echo -ne "
==============================================================================
enable rpm media codecs
==============================================================================
"
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf groupupdate -y sound-and-video

#old :
#sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
#sudo dnf install -y lame\* --exclude=lame-devel
#sudo dnf group upgrade -y --with-optional Multimedia
}

brbinstall_distrib_rpm-based_fedora-based_audio-pls () {
echo -ne "
==============================================================================
audio could now work on vm
==============================================================================
"
#use with care
#could work idk
systemctl --user --now disable pipewire pipewire-pulse wireplumber
sudo dnf swap -y pipewire-pulseaudio pulseaudio --allowerasing
sudo dnf install -y pulseaudio-utils
}

brbinstall_distrib_rpm-based_fedora-based_raw () {
echo -ne "
==============================================================================
rawhide
==============================================================================
"
#use with care
#to fedora rawhide
cat /etc/os-release
sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=36
sudo dnf system-upgrade download --releasever=36 --allowerasing
sudo dnf system-upgrade reboot
cat /etc/os-release
}

brbinstall_distrib_rpm-based_fedora-based_run () {

  brbinstall_distrib_rpm-based_misc_dnf-tweaks

  brbinstall_distrib_rpm-based_fedora-based_rpm-fusion

  brbinstall_distrib_rpm-based_fedora-based_codecs

  brbinstall_setup_miscsetup_flathub
}
