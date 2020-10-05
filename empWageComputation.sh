#!/bin/bash -x 

echo "welcome to employee wage computation"

attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
	echo "employee is present"
else
	echo"employee is absent"
fi

EmployeeFullTimeHours=8
EmployeePartTimeHours=4
EmployeeWagePerHr=20

if [ $attendance -eq 1 ]
then
	salary=$(($EmployeeFullTimeHours*$EmployeeWagePerHr));
	echo "Employee FullTime salary :"$salary
else
	salary=0
	echo " Employee is absent"
fi

if [ $attendance -eq 1 ]
then
	isFullTime=1
	isPartTime=2
	employeeCheck=$((RANDOM%3))

	if [ $employeeCheck -eq $isFullTime ]
	then
		salary=$(( $EmployeeFullTimeHours*$EmployeeWagePerHr ))
		echo " FullTime employee salary is :" $salary
	elif [ $employeeCheck -eq $isPartTime ]
	then
		salary=$(( $EmployeePartTimeHours*$EmployeeWagePerHr ))
		echo " PartTime employee salary is: " $salary
	else
		salary=0
		echo "Employee is absent"
	fi
else
	salary=0
	echo " employee is absent"
fi
