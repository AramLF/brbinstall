#!/bin/bash
cd ../../../
source ./scriptSource.sh

#template_tp1_version

testVar=$(pwd)

echo $testVar
cd ../
testVar=$(pwd)
echo $testVar

read -r -p "Press Enter " response
case "$response" in
    [yY][eE][sS]|[yY])
        #do_something
        echo "pressed yes"
        ;;
    *)
        #do_something_else
        echo "pressed no"
        ;;
esac

if [ $response = "1" ]
then
   echo "ok";
elif [ $response = "2" ]
then
  echo "ye";
else
  echo "exiting";
  exit 1;
fi

echo "idk"
