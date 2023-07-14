#!/bin/bash

brbinstall_setup_commands_basics () {
echo -ne "
==============================================================================
Basics
==============================================================================
"
time tree /
time du -a /
# while true;for i in {1..5};do echo $i;sleep 1;done; time tree /; sleep 1; done
# while true; echo -n idk; date;sleep 1;done
}

brbinstall_setup_commands_rm-brb-cache () {
echo -ne "
==============================================================================
Remove brbinstall cache
==============================================================================
"
cacheStorage=$(du -sh $initialCacheFolder)
echo -ne "
! this command will be performed ! :
sudo find $initialCacheFolder -mindepth 1  ! -name 'README.md' -exec rm -r {} +
It will remove $cacheStorage
Ctrl+C to opt out
Enter opt in
"
read
#sudo rm -rf $initialCacheFolder/!(README.md)
sudo find $initialCacheFolder -mindepth 1  ! -name 'README.md' -exec rm -r {} +
}

brbinstall_setup_commands_script-typescript () {
echo -ne "
==============================================================================
Script typescript
==============================================================================
"
#maybe start script at the begining
echo -ne "
Is script (typescript) being used ? 

If not [Ctrl+c] to exit the current script and write this :
script $initialCacheFolder/scriptedTypescript
Then restart this script 

Press [Enter] to continue 
"

}

brbinstall_setup_commands_script-end () {
echo -ne "
==============================================================================
Script typescript ended ?
==============================================================================
"
echo -ne "
if script is present below (not 'grep script') exit the terminal or use Ctrl+D
ps aux |grep script
"
ps aux |grep script

}
