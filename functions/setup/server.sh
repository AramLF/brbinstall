#!/bin/bash

brbinstall_setup_server_start() {
echo -ne "
==================================brbinstall==================================
Server stuff
==============================================================================
"
#sudo $auto_pkg_installer stuff
ls
}

brbinstall_setup_server_distance() {
echo -ne "
==================================brbinstall==================================
Log with some distance (cockpit and ssh)
==============================================================================
"
sudo $auto_pkg_installer cockpit
sudo $auto_pkg_installer openssh-server
#sudo systemctl enable cockpit
#sudo systemctl status ssh
#ssh wvm@192.168.0.37
}

brbinstall_setup_server_start-with-display() {
echo -ne "
==================================brbinstall==================================
Start the display for any reason
==============================================================================
"
#might change for all the dm
sudo systemctl enable lightdm
#will change place maybe (one day)
sudo sed -i "s#.*greeter-hide-users.*#greeter-hide-users=false#g" /etc/lightdm/lightdm.conf
#https://wiki.archlinux.org/title/Activating_numlock_on_bootup
sudo $auto_pkg_installer numlockx
sudo sed -i "s#.*greeter-setup-script.*#greeter-setup-script=/usr/bin/numlockx on#g" /etc/lightdm/lightdm.conf
}

brbinstall_setup_server_numlock-for-tty() {
echo -ne "
==================================brbinstall==================================
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
==================================brbinstall==================================
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
==================================brbinstall==================================
The laptop lid need to be open
==============================================================================
"
sudo sed -i "s/.*HandleSuspendKey.*/#HandleSuspendKey=suspend/g" /etc/systemd/logind.conf
sudo sed -i "s/.*HandleLidSwitch.*/#HandleLidSwitch=suspend/g" /etc/systemd/logind.conf
sudo sed -i "s/.*HandleLidSwitchDocked.*/#HandleLidSwitchDocked=ignore/g" /etc/systemd/logind.conf

sudo systemctl restart systemd-logind.service

}
