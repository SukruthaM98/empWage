#!/bin/bash -x 

echo "welcome to employee wage computation"

attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi

isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRateperHr=20;
numWorkingDays=20;

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ))
		case $empCheck in
			$isFullTime)
				empHrs=8 ;;
			$isPartTime)
				empHrs=4 ;;
			*)
				empHrs=0 ;;
		esac
		totalEmpHr=$(( $empHrs+$totalEmpHr ))

done

totalsalary=$(( $totalEmpHr*$empRateperHr ))
echo $totalsalary "is the total salary"

