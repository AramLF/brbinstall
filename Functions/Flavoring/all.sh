#!/bin/bash

flavoring_all_choice() {
echo -ne "
------------------------------------------------------------------------------
Flavoring choice
------------------------------------------------------------------------------
"

echo "What flavor do you want ?"
echo "1) catp"
echo "2) coll"
echo "3) grey"
echo "4) matte"
echo "5) vimi"
echo "6) wind"
read -r -p "Press the number then press Enter : " flavChoice

if [ $flavChoice = "1" ]
then
  flavoring_catp_script
elif [ $flavChoice = "2" ]
then
  flavoring_coll_script
elif [ $flavChoice = "3" ]
then
  flavoring_grey_script
elif [ $flavChoice = "4" ]
then
  flavoring_matte_script
elif [ $flavChoice = "5" ]
then
  flavoring_vimi_script
elif [ $flavChoice = "6" ]
then
  flavoring_wind_script
else
  echo "exiting please choose something in the list";
  exit 1;
fi

}
