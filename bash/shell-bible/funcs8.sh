#!/bin/bash
. ./lib.sh

value1=10
value2=5
result1=`addem $value1 $value2`
result2=`multem $value1 $value2`
result3=`divem $value1 $value2`
echo "Add: $result1"
echo "Mul: $result2"
echo "Div: $result3"
