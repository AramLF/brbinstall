#!/bin/bash

brbinstall_flavoring_all_choice() {
echo -ne "
==============================================================================
Flavoring choice
==============================================================================
"

#terrible way of doing things (need to be changed seriously)
echo "Choose the flavor to install :"
echo "1) catp"
echo "2) coll"
echo "3) flue"
echo "4) grey"
echo "5) matte"
echo "6) roll"
echo "7) spice"
echo "8) vimi"
echo " "
read -r -p "Select the flavor with the number, [Enter] to validate : " flavChoice 

#another terrible way of doing things :
if [ $flavChoice = "1" ]
then
  brbinstall_flavoring_catp_script
elif [ $flavChoice = "2" ]
then
  brbinstall_flavoring_coll_script
elif [ $flavChoice = "3" ]
then
  brbinstall_flavoring_flue_script
elif [ $flavChoice = "4" ]
then
  brbinstall_flavoring_grey_script
elif [ $flavChoice = "5" ]
then
  brbinstall_flavoring_matte_script
elif [ $flavChoice = "6" ]
then
  brbinstall_flavoring_roll_script
elif [ $flavChoice = "7" ]
then
  brbinstall_flavoring_spice_script
elif [ $flavChoice = "8" ]
then
  brbinstall_flavoring_vimi_script
else
  echo "exiting please choose something in the list";
  exit 1;
fi

}
