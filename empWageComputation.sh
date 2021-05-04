
#!/bin/bash
echo "welcome to Employee Wage Computation program"
isPresent=1;
wagePerHr=20;
fullDay=8;
dailyPayment=0;
CheckRandom=$((RANDOM%2))
if [ $isPresent -eq $CheckRandom ]
then
     echo  "Employee is Present"
     dailyPayment=$(($wagePerHr*$fullDay))
     echo "Daily Payment is: " $dailyPayment
else
     echo  "Employee is Absent"
     echo "Daily Payment is: "$dailyPayment
fi
