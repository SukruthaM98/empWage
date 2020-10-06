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
empRatePerHr=20;
NumOfWorkingDays=20;
totalSalary=0;

for (( day=1; day<=$NumOfWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3));

	case $empCheck in
		$isFullTime)
			empHrs=8 ;;
		$isPartTime)
			empHrs=4;;
		*)
			empHrs=0 ;;
	esac
salary=$(( $empHrs*$empRatePerHr ));
totalSalary=$(( $totalSalary+$salary ));
done

echo $totalSalary "is the total salary of the employee for a month"

