#!/bin/bash

brbinstall_setup_maintenance_grub-echo-repair () {
echo -ne "
==================================brbinstall==================================
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
#example with grub2
sudo grub2-install /dev/sda
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
"
}

brbinstall_setup_maintenance_chroot-partition () {
echo -ne "
==================================brbinstall==================================
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
==================================brbinstall==================================
Echo the os-prober var
==============================================================================
"
echo -ne "
#GRUB_DISABLE_OS_PROBER=false
#in /etc/default/grub
"
}

brbinstall_setup_maintenance_echo-changing-boot-partition () {
echo -ne "
==================================brbinstall==================================
Echo the the changing boot partition
==============================================================================
"
echo -ne "
#Create a separation ext4 /boot partition (~1GB)
#create partition, mount temporarily, cp and mv(to save), modify uuid in fstab, update grub
sudo mkdir /mnt/temp_boot
sudo mount /dev/sdXY /mnt/temp_boot
sudo cp -r /boot/* /mnt/temp_boot/
sudo mv /boot /boot_backup
sudo blkid /dev/sdXY
UUID=<UUID_of_the_boot_partition> /boot ext4 defaults 0 2
sudo update-grub
"
}
