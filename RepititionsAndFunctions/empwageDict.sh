#!/bin/bash -x
# CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIABLES
totalworkingHr=0;
totalWorkingDays=0;
declare -A empDailyWage 
function getworkingHrs() {
case $1 in
     $IS_FULL_TIME)
workingHrs=8
;;
$IS_PART_TIME)
workingHrs=4
;;
*)
workingHrs=0
;;
esac
echo $workingHrs
}
function getEmpWage() {
local workHr=$1
wage=$(( $workHr*$EMP_RATE_PER_HR ))
echo  $wage
}
while [[ $totalworkingHr -lt $MAX_HRS_IN_MONTH &&
          $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   workHr="$( getworkingHrs $((RANDOM%3)) )"
totalworkingHrs=$(( $totalworkingHrs+$workHr ))
empDailyWage["Day "$totalworkingDays]="$( getEmpWage $workHr )"

done
totalSalary=$(( $getEmpWage + $totalworkingHrs ))
echo "Daily wage " ${empDailyWage[@]}
echo "All keys"  ${!empDailyWage[@]}
