# brbinstall arch-based
arch-based

## Needs

If your distribution doesn't come with yay you might want to install it :  
```
sudo pacman -Sy --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## Misc
```
sudo paccache -r
yay -Sc
```
```
git clone "aurpkg" #do not use sudo it will create it as a root folder instead of the user folder
cd "aurpkg"
makepkg -si #or pacman -U $pkname.tar.xz
```

Random aur
```
yay pamac-all bauh chaotic-aur
```

## Remaining Installation

Change theme & Icon theme & extensions params  
