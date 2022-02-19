# brbinstall
The purpose of brbinstall is to install everything I need for a fresh install of a Linux Distribution, without the hassle of doing it manually each time (it also help me familiarize myself with shell coding). It can help for : installing software, dependencies, theming, ricing, etc... This repository is in developpment, therefore it can be largely improved and is destined to changed while not following a specific Roadmap.  

## Installation
The installation and the execution is at your own risk, do it only if you know what you are doing. The scripts can be dependent of a distribution version, so it could not work in some cases.
```
git clone https://github.com/AramLF/brbinstall
```
Then change to the folder corresponding to the flavor and execute the install.sh (it is important to be in the current directory of the flavor, do not execute if from somewhere else)
```
./install.sh
```
### Flavors
- ArchBased [gnomed](https://github.com/AramLF/brbinstall/tree/main/Distributions/ArchBased/gnomed)
- Debian [gnomed](https://github.com/AramLF/brbinstall/tree/main/Distributions/Debian/gnomed)
- [Fedora](https://github.com/AramLF/brbinstall/tree/main/Distributions/Fedora)
- LinuxMint [gnomeOver](https://github.com/AramLF/brbinstall/tree/main/Distributions/LinuxMint/gnomeOver) & [xfceWidened](https://github.com/AramLF/brbinstall/tree/main/Distributions/LinuxMint/xfceWidened) (both deprecated)
- [kdevi](https://github.com/AramLF/brbinstall/tree/main/Flavor/kdevi)

## Potential improvements
- The script could be executed from the main directory
- Options could be added when doing ./install.sh
- User input while the installation   
- Rearrange the whole structure
