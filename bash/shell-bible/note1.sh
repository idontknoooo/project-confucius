expr 1 + 5      # 6
expr 1+5        # same as echo 1+5
expr 1+ 5       # Syntax error
expr 1 +5       # Syntax error 
expr 5 \* 2     # 10
expr 5 * 2      # Syntax error, since * is wildcard in shell script
echo $[1 + 4]   # 5
expr $[1 + 4]   # 5, same as above
                # Basic of `bc`
bc              # Bash Calculator
                # Allow integer & floating point 
                # Variables 
                # Comments use # and /**/
                # Can use if-then
                # Expression
                # Functions
scale = 4       # same as `scale=4`
quit            # Quit program
print 4         # 4 
                # Use `bc` in script
#!/bin/bash
var1=`echo " scale=4; 3.44/5" | bc` 
echo "The Answer is: $var1"
                # Use inline `bc` with `EOF`
#!/bin/bash
var1=10.46
var2=43.67
var3=33.2
var4=71

var5=`bc << EOF
scale=4
a1 = ($var1 * $var2)
b1 = ($var3 * $var4)
a1 + b1 # This will print in `bc`, but not in shell
EOF
`

echo $? # Checking the exit status
# Exit Status Code 
# 0: Successful complete
# 1: General unknown error
# 2: Misuse of shell command 
# 126: The command can't execute
# 127: Command not found 
# 128: Invalid exit argument 
# 128+x: Fatal error with linux signal x
# 130: Command terminated with ctrl+C
# 255: Exit status out of range 
var5=5
exit $var5 # Assing exit code for a program

echo The final answer for this mess is $var5
