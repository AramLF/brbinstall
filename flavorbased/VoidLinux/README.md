# brbinstall Void
Void

Options :  
- gnome.sh (gnome with gdm)
- kde.sh (kde with sddm)

## Misc

Web page : https://voidlinux.org  

Remove cache :  
```
sudo xbps-remove -o
sudo xbps-remove -O
```
Misc :  
```
sudo xbps-install void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
sudo xbps-install -Syu
sudo xbps-query -L
sudo xbps-query -Rs lolcat
```

[wireless](https://lucacorbucci.medium.com/how-to-connect-to-wi-fi-from-terminal-using-wpa-supplicant-on-void-linux-9c9fe6ca5403) :
```
ip a
sudo touch /etc/wpa_supplicant/wpa_supplicant-wlp1s0.conf
sudo vi /etc/wpa_supplicant/wpa_supplicant-wlp1s0.conf
```
```
ctrl_interface=DIR=/run/wpa_supplicant

update_config=1
```
```
wpa_passphrase SSID PASSWORD >> /etc/wpa_supplicant/wpa_supplicant-wlp1s0.conf
wpa_supplicant -B -i wlp1s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp1s0.conf
dhcpd
ping google.com
```
