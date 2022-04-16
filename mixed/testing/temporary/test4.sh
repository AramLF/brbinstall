#!/bin/bash
cd ../../../
source ./scriptSource.sh

sed '/^# End of file/i 127.0.1.1		'"$theHostname"'' $initialPath/mixed/testing/temporary/hoststry

#cat $initialPath/mixed/testing/temporary/hoststry
