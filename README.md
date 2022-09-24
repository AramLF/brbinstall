# brbinstall
The purpose of brbinstall is to install everything I need for a fresh install of a Linux Distribution, without the hassle of doing it manually each time (it also help me familiarize myself with shell coding). It can help for : installing software, dependencies, theming, ricing, etc... This repository is in developpment, therefore it can be largely improved and is destined to changed while not following a specific Roadmap.  

## Installation
The installation and the execution is at your own risk, do it only if you know what you are doing. The scripts can be dependent of a distribution version, so it could not work in some cases.
```
git clone https://github.com/AramLF/brbinstall
```
Then change to the folder corresponding to the flavor (flavoring for example)  
```
cd brbinstall/flavor/flavoring/
```
And execute the install.sh (it is important to be in the current directory of the flavor, do not execute if from somewhere else and do not execute it as a superuser)  
```
./install.sh
```
### flavors
- [arch](https://github.com/AramLF/brbinstall/tree/main/flavor/arch) (Only set a few things after an archinstall)
- [debian](https://github.com/AramLF/brbinstall/tree/main/flavor/debian) (Add some user friendliness)
- [voidlinux](https://github.com/AramLF/brbinstall/tree/main/flavor/voidlinux) (A post install script to set up everything like the services, the DE & more)  
- [neomint](https://github.com/AramLF/brbinstall/tree/main/flavor/neomint) (Tweaks Linux Mint Cinnamon 21 with some theming and set a few things up)  
- [flavoring](https://github.com/AramLF/brbinstall/tree/main/flavor/flavoring) (Contains a script to install different themes)  

### Use Commands Independently
If you want to use the commands directly you can also do this (you need to be in this directory) :
```
source scriptSource.sh
```
And then use the commands starting with "brbinstall_" (it will only be available during the current terminal session).

### Folder Tree
```  
brbinstall/
├── cachefolder (that's where goes every downloaded files)  
├── dotfiles (few dotfiles, most of the files needed are downloaded during the scripts)
├── flavor (executable flavor)
├── functions (location off all functions that can be used)
│   ├── desktopenvironments (related to DE functions : applying theme etc.)  
│   ├── distributions (related to Distribs oddness : setting up dnf, setting up Arch or Void etc.)
│   ├── flavoring (related to unique running script : setting up special theme, flavor etc.)
│   ├── setup (allow to set up scripts and programs quickly)
│   ├── templates (display the informations during the script)
│   └── theming (allow to theme almost everything : terminal, colors, gtk, kde, icons etc.)
└── mixed (misc folder mostly for test purpose)
```

## Potential improvements
- Check [TODO.md](https://github.com/AramLF/brbinstall/blob/main/TODO.md)

## See some colors
- Check [MORE.md](https://github.com/AramLF/brbinstall/blob/main/MORE.md)
