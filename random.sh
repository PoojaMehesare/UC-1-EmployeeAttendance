#!/bin/bash -x
echo "getting a two digit number using random function"
$(( RANDOM%16 + 11 ))
echo "number is: $x"




