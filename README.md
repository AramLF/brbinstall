# brbinstall
The purpose of brbinstall is to install everything I need for a fresh install of a Linux Distribution, without the hassle of doing it manually each time (it also help me familiarize myself with shell coding). It can help for : installing software, dependencies, theming, ricing, etc... This repository is in developpment, therefore it can be largely improved and is destined to changed while not following a specific Roadmap.  

## Installation
The installation and the execution is at your own risk, do it only if you know what you are doing. The scripts can be dependent of a distribution version, so it could not work in some cases.
```
git clone https://github.com/AramLF/brbinstall
```
Then change to the folder corresponding to the flavor (flavoring for example)  
```
cd brbinstall/Flavor/Flavoring/
```
And execute the install.sh (it is important to be in the current directory of the flavor, do not execute if from somewhere else and do not execute it as a superuser)  
```
./install.sh
```
### Flavors
- [ArchBased](https://github.com/AramLF/brbinstall/tree/main/Flavor/ArchBased) (Only set a few things after an archintall)
- [Debian](https://github.com/AramLF/brbinstall/tree/main/Flavor/Debian) (Does some theming and set it with more user friendliness) - Deprecated
- [VoidLinux](https://github.com/AramLF/brbinstall/tree/main/Flavor/VoidLinux) (A post install script to set up everything like the services, the DE & more)  
- [Neomint](https://github.com/AramLF/brbinstall/tree/main/Flavor/Neomint) (Tweaks Linux Mint Cinnamon 20.3 with some theming and set a few things up)  
- [Flavoring](https://github.com/AramLF/brbinstall/tree/main/Flavor/Flavoring) (Contains a script to install some theming)  

### Use Commands Independently
If you want to use the commands directly you can also do this (you need to be in this directory) :
```
source ./scriptSource.sh
```
And then use the commands starting with "brbinstall_" (it will only be available during the current terminal session).

### Folder Tree
```  
brbinstall/
├── cachefolder (that's where goes every downloaded files)  
├── Dotfiles (few dotfiles, most of the files needed are downloaded during the scripts)
├── Flavor (executable flavor)
├── Functions (location off all functions that can be used)
│   ├── DesktopEnvironments (related to DE functions : applying theme etc.)  
│   ├── Distributions (related to Distribs oddness : setting up dnf, setting up Arch or Void etc.)
│   ├── Flavoring (related to unique running script : setting up special theme, flavor etc.)
│   ├── Setup (allow to set up scripts and programs quickly)
│   ├── Templates (display the informations during the script)
│   └── Theming (allow to theme almost everything : terminal, colors, gtk, kde, icons etc.)
└── mixed (misc folder mostly for test purpose)
```

## Potential improvements
- The script could be executed from the main directory  
- Rearrange the whole structure
- add comments & maybe better naming
- add pics
- some blocks of code could be functions (avoid repetitions)
- huge improvement over some awfully made functions
- folders in lowercase
