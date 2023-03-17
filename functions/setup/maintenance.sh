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
sudo mount /dev/sda5 /mnt
for i in /dev /dev/pts /proc /sys /run; do sudo mount -B \$i /mnt\$i; done
sudo chroot /mnt
#might be grub2 or another name
sudo grub-install /dev/sda
sudo update-grub
#or update-grub do the grub-mkconfig
grub-mkconfig -o /boot/grub/grub.cfg
"
}

brbinstall_setup_maintenance_chroot-partition () {
echo -ne "
==============================================================================
chroot a partition
==============================================================================
"
echo -ne "
!!!Use this command with caution!!!

"
ls /dev/sda*
read -r -p "Select the number, [Enter] to validate : " chrootChoice
sudo umount -Rv /mnt
sudo mount -v /dev/sda$chrootChoice /mnt
for i in /dev /dev/pts /proc /sys /run; do sudo mount -vB $i /mnt$i; done
sudo chroot /mnt
sudo umount -Rv /mnt
}

brbinstall_setup_maintenance_grub-echo-os-prober () {
echo -ne "
==============================================================================
Echo the os-prober var
==============================================================================
"
echo -ne "
#GRUB_DISABLE_OS_PROBER=false
#in /etc/default/grub
"
}
