#!/bin/bash

distrib_fedora_dependencies () {
echo -ne "
------------------------------------------------------------------------------
Dependencies Fedora installation
------------------------------------------------------------------------------
"
#none for now
}

distrib_fedora_dnf_tweaks () {
echo -ne "
------------------------------------------------------------------------------
dnf.conf tweaks
------------------------------------------------------------------------------
"
#[main]
#gpgcheck=1
#installonly_limit=3
#clean_requirements_on_remove=True
#best=False
#skip_if_unavailable=True
cat /etc/dnf/dnf.conf
sudo sh -c 'echo "fastestmirror=True" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'
cat /etc/dnf/dnf.conf
}

distrib_fedora_rpm_fusion () {
echo -ne "
------------------------------------------------------------------------------
enable rpm fusion free & nonfree
------------------------------------------------------------------------------
"
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#for gnome-software...
sudo dnf install -y rpmfusion-free-appstream-data
sudo dnf install -y rpmfusion-nonfree-appstream-data
}

distrib_fedora_codecs () {
echo -ne "
------------------------------------------------------------------------------
enable rpm media codecs
------------------------------------------------------------------------------
"
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade -y --with-optional Multimedia
}

distrib_fedora_raw () {
echo -ne "
------------------------------------------------------------------------------
rawhide
------------------------------------------------------------------------------
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

distrib_fedora_run () {
  ls -l
  #later
  #distrib_fedora_dnf_tweaks
  #distrib_fedora_rpm_fusion
  #distrib_fedora_codecs
}
