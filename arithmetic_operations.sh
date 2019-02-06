#!/bin/bash
# Purpose: To do arithmetic operations using expr and bc.
# Execution: "sh script_name.sh"

# Use expr for integers
a=30 b=10 c=5 d=2
echo "\033[7mUsing expr for calculations:\033[0m"
echo Sum=`expr $a + $b`
echo Diff=`expr $a - $b`
echo Product=`expr $a \* $b`
echo Quotient=`expr $a / $b`
echo Remainder=`expr $a % $b`

# Use bc for floats
a=31.5 b=10 c=5 d=2.0
echo "\033[7mUsing bc for calculating floats:\033[0m"
echo `echo $a \* $b | bc`
echo `echo $a \* \( $b + $c \) / $d | bc`
f=`echo $a / $d | bc`
echo $f
