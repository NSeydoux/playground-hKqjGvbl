#! /bin/bash

gnatmake test-io.adb
gnatmake test-io_correction.adb 2> /dev/null
./test-io | tee log.out
./test-io_correction > correction.out
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
