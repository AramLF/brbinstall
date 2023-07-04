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
echo -ne "
! this command will be performed ! :
sudo rm -rf $initialCacheFolder/!(README.md)
Ctrl+C to opt out
Enter opt in
"
read 
sudo rm -rf $initialCacheFolder/!(README.md)
}
