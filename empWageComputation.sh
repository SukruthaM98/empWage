#!/bin/bash -x 

echo "welcome to employee wage computation"

attendance=$((RANDOM%2))
if [ $attendance -eq 0 ]
then
	echo "employee is present"
else
	echo"employee is absent"
fi
