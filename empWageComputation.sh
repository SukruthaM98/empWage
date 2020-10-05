#!/bin/bash -x 

echo "welcome to employee wage computation"

attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
	echo "employee is present"
else
	echo"employee is absent"
fi

EmployeeHours=8
EmployeeWagePerHr=20

if [ $attendance -eq 1 ]
then
	salary=$(($EmployeeHours*$EmployeeWagePerHr));
else
	salary=0
fi
