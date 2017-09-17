#! /bin/bash

gnatmake hello_world.adb
gnatmake hello_world_correction.adb 2> /dev/null
./hello_world | tee log.out
./hello_world_correction > correction.out
if [ -z `diff log.out correction.out`] 
then
	echo "Correct !"
else
	echo "Incorrect\n"
	echo "Expected output : "
	cat correction.out
	echo "\n got : "
	cat log.out
fi
