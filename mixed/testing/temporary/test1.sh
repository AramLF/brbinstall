#!/bin/bash
cd ../../../
source ./scriptSource.sh

#template-1-version

testVar=$(pwd)

echo $testVar
cd ../
testVar=$(pwd)
echo $testVar
