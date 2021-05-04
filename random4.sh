#!/bin/bash -x
echo "getting a single digit number using random function"
$(( RANDOM%10 ))
echo "number is: $x"

