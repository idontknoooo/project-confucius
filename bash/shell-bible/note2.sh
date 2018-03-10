# if-then statement
if date
then
  echo "It worked"
fi
# Alternative form of if-then
if date; then
  echo "it worked"
fi
# if-then-else 
if xxx 2>/dev/null; then   # Use a bad command and suppress error prompt from terminal
  echo "Work"
else
  echo "Not work"
fi
# if-elif-then
var1=5
if [ $var1 -lt 3 ]; then # compare use [] an -lt
  echo "less"
elif [ $var1 -gt 3 ]; then
  echo "greater"
else
  echo "equal"
fi
# if-then cannot examine anything other than exit code, but we can use `test` to create such a condition
# test
test 3 -lt 2 && echo "Less" || echo "Not less"
# Same as above 
if test 3 -lt 2; then 
  echo "Less" 
else
  echo "Not less"
fi
# Alternative way to declare a 'test', use [] and LEAVE Space between each part
if [ 3 -lt 2 ]; then
  echo "Less"
else
  echo "Not less"
fi
# Numeric Comparison 
1 -eq 2 # Equal
1 -ge 2 # Greater or Equal
1 -gt 2 # Greater than
1 -le 2 # Less or Equal
1 -lt 2 # Less than
1 -ne 2 # Not Equal
# 
