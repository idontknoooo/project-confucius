# If else | Condition

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

# String Comparison (Only in Bash, doesn't work in zsh)
if [ "bb" \< "bc" ] ; then 
    echo "Less" # b < c in Ascii code
fi
# >
if [ "bc" \> "bb" ] ; then 
    echo "More" # b < c in Ascii code
fi
"a" = "b"   # Same as 
"a" != "b"  # Not Equal
"a" \< "b"  # Less than by ascii
"a" \> "b"  # Greater than by Ascii
-n "b"      # Length > 0
-z "b"      # Length == 0

# File comparison
-d file         # File is directory
-e file         # File exists 
-f file         # file is a file
-r file         # file is readable
-s file         # file is not empty
-w file         # file is writable
-x file         # file is executable
-O file         # file is owned by current user
-G file         # file's and the default group is the same as the current user
file1 -nt file2 # Checks if file1 is newer than file2
file1 -ot file2 # Checks if file1 is older than file2

# Compound Condition Testing
[ condition1 ] && [ condition2 ]
[ condition1 ] || [ condition2 ]

# Double parentheses
#   Double parentheses for mathematical expressions
#   Double square brackets for advanced string handling functions
if (( 3 ** 2 < 10 )) ; then 
    echo "Mathematics" 
fi
# Advanced symbols
# val++
# val--
# ++val
# --val
# !
# ~
# ** 
# << 
# >> 
# &
# | 
# && 
# ||

# Double Brackets
#   advanced features for string comparisons
if [[ $USER == r* ]] ; then 
    echo "Hello $USER"
else
    echo "Sorry, I don't know you"
fi

# The case command 
#   Check different cases for $USER
case $USER in 
rich | barbara)                             # Or condition
    echo "Welcome, $USER"
    echo "Please enjoy your visit";;
pco)                                        # condition 2
    echo "Special testing account";;
jessica)                                    # condition 3
    echo "Don't forget to log off";;
*)                                          # condition 4 | Default condition
    echo "Sorry, you're not allowed here";;
esac

























