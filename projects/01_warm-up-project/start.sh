#! /bin/bash

gnatmake test-io.adb
gnatmake test-io_correction.adb 2> /dev/null
cat input | ./test-io | tee log.out
cat input | ./test-io_correction > correction.out
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
