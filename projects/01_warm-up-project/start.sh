#! /bin/bash

gnatmake test_io.adb
gnatmake test_io_correction.adb 2> /dev/null
cat input | ./test_io | tee log.out
cat input | ./test_io_correction > correction.out
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
