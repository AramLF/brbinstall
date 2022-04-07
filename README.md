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
- [ArchBased](https://github.com/AramLF/brbinstall/tree/main/Flavor/ArchBased)
- [Debian](https://github.com/AramLF/brbinstall/tree/main/Flavor/Debian)
- [Void](https://github.com/AramLF/brbinstall/tree/main/Flavor/Void)
- [gnomeOver](https://github.com/AramLF/brbinstall/tree/main/Flavor/gnomeOver)
- [gnomed](https://github.com/AramLF/brbinstall/tree/main/Flavor/gnomed)
- [matte](https://github.com/AramLF/brbinstall/tree/main/Flavor/matte)
- [vimi](https://github.com/AramLF/brbinstall/tree/main/Flavor/vimi)
- [wind](https://github.com/AramLF/brbinstall/tree/main/Flavor/wind)
- [coll](https://github.com/AramLF/brbinstall/tree/main/Flavor/coll)
- [grey](https://github.com/AramLF/brbinstall/tree/main/Flavor/grey)
- [catp](https://github.com/AramLF/brbinstall/tree/main/Flavor/catp)
- [xfceDock](https://github.com/AramLF/brbinstall/tree/main/Flavor/xfceDock)
- [xfceWidened](https://github.com/AramLF/brbinstall/tree/main/Flavor/xfceWidened)


## Potential improvements
- The script could be executed from the main directory
- Options could be added when doing ./install.sh (void for example)
- User input while the installation   
- Rearrange the whole structure
- add comments for functions & maybe better naming (_ instead of -)
- add pics
