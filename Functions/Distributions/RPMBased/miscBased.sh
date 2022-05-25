#!/bin/bash

brbinstall_distrib_rpm-based_dependencies () {
echo -ne "
==============================================================================
RPM based
==============================================================================
"
#none for now
}

brbinstall_distrib_rpm-based_dnf_tweaks () {
echo -ne "
==============================================================================
dnf.conf tweaks
==============================================================================
"
#[main]
#gpgcheck=1
#installonly_limit=3
#clean_requirements_on_remove=True
#best=False
#skip_if_unavailable=True
cat /etc/dnf/dnf.conf
sudo sh -c 'echo "# Added for speed:" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "fastestmirror=True" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'
echo ""
cat /etc/dnf/dnf.conf
}
