#!/bin/bash

brbinstall_setup_server_start() {
echo -ne "
==============================================================================
Server stuff
==============================================================================
"
#sudo $auto_pkg_installer stuff
ls
}

brbinstall_setup_server_numlock-for-tty() {
echo -ne "
==============================================================================
Add numlock at startup for tty
==============================================================================
"

#https://wiki.archlinux.org/title/Activating_numlock_on_bootup
echo -ne '#!/bin/bash

for tty in /dev/tty{1..6}
do
    /usr/bin/setleds -D +num < "$tty";
done
' | sudo tee /usr/local/bin/numlock >/dev/null

sudo chmod +x /usr/local/bin/numlock

echo -ne '[Unit]
Description=numlock

[Service]
ExecStart=/usr/local/bin/numlock
StandardInput=tty
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
' | sudo tee /etc/systemd/system/numlock.service >/dev/null

sudo chmod +x /etc/systemd/system/numlock.service

sudo systemctl enable numlock.service

}

brbinstall_setup_server_allow-closed-laptop-lid() {
echo -ne "
==============================================================================
Let the laptop lid closed
==============================================================================
"
sudo sed -i "s/.*HandleSuspendKey.*/HandleSuspendKey=ignore/g" /etc/systemd/logind.conf
sudo sed -i "s/.*HandleLidSwitch.*/HandleLidSwitch=ignore/g" /etc/systemd/logind.conf
sudo sed -i "s/.*HandleLidSwitchDocked.*/HandleLidSwitchDocked=ignore/g" /etc/systemd/logind.conf

sudo systemctl restart systemd-logind.service

}

brbinstall_setup_server_disallow-closed-laptop-lid() {
echo -ne "
==============================================================================
The laptop lid need to be open
==============================================================================
"
sudo sed -i "s/.*HandleSuspendKey.*/#HandleSuspendKey=suspend/g" /etc/systemd/logind.conf
sudo sed -i "s/.*HandleLidSwitch.*/#HandleLidSwitch=suspend/g" /etc/systemd/logind.conf
sudo sed -i "s/.*HandleLidSwitchDocked.*/#HandleLidSwitchDocked=ignore/g" /etc/systemd/logind.conf

sudo systemctl restart systemd-logind.service

}
