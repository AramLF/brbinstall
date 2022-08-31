#!/bin/bash

brbinstall_setup_maintenance_grub-echo-repair () {
echo -ne "
==============================================================================
Echo the grub fix
==============================================================================
"
#https://askubuntu.com/questions/1317940/boot-repair-fails-to-help-the-current-session-is-in-bios-compatibility-mode
#https://unix.stackexchange.com/questions/111889/how-do-i-update-grub-in-arch-linux
echo -ne "
mount /dev/sda5 /mnt
for i in /dev /dev/pts /proc /sys /run; do sudo mount -B \$i /mnt\$i; done
sudo chroot /mnt
#might be grub2 or another name
sudo grub-install /dev/sda
sudo update-grub
#or update-grub do the grub-mkconfig
grub-mkconfig -o /boot/grub/grub.cfg
"
}
