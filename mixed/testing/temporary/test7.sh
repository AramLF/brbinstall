#!/bin/bash
cd ../../../
source ./scriptSource.sh

cd mixed/testing/temporary
#brbinstall_template_tp1_version



testing-things-7 (){

  brbinstall_setup_commands_script-typescript

  brbinstall_template_tp1_version

  brbinstall_setup_commands_script-end

}


echo "start"


testing-things-7 

echo "end"
