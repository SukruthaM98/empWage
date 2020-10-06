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

function getWorkingHours () {

        case $1 in
                $isFullTime)
                        empHrs=8 ;;
                $isPartTime)
                        empHrs=4 ;;
                *)
                        empHrs=0 ;;
         esac
                echo $empHrs
}

function caclDailyWage ( ) {
local empHrs=$1;
wage=$(($empHrs+$empRateperHr))
echo $wage
}


while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        empHrs="$( getWorkingHours $((RANDOM%3)) )"
        totalEmpHr=$(($totalEmpHr+$empHrs))
        empDailyWage[$totalWorkingDays]="$( caclDailyWage $empHrs )"
done

totalsalary="$( caclDailyWage $totalEmpHr )"
echo "daily wage" ${empDailyWage[@]}

