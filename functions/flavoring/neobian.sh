#!/bin/bash

brbinstall_flavoring_neobian_start () {
echo -ne "
==============================================================================
Debian
==============================================================================
"
#none for now
#README.md in flavor
}

brbinstall_flavoring_neobian_prevention () {
echo -ne "
==============================================================================
Prevention
==============================================================================
"
#prevention
ls 
}

brbinstall_flavoring_neobian_neobian () {
echo -ne "
==============================================================================
Running neobian
==============================================================================
"
ls
}


brbinstall_flavoring_neobian_run () {
  #stay like this for now
  brbinstall_flavoring_neobian_neobian
}
