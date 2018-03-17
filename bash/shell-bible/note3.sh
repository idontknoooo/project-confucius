# For loop

# Reading values in a list
for test in a b c d
do 
    echo The next state is $test 
done

# Reading complex values in a list
for test in I don\'t know if this\'ll work
do 
    echo "word:$test"
done

# Reading a list from a variable 
list="Alabama Alaska Arizona"
list=$list" Connecticut"                # Concatenate string
for state in $list
do 
    echo "Have you ever visited $state?"
done

# Reading values from a command 
file="file_name"
for state in `cat $file`
do
    echo "Visit"
done

# Changing the field separator | Internal field separator
IFS=$'\n'

# C-Style for Command
for (( i=1; i <= 10; ++i ))
do 
    echo $i
done

# The while command 
var1=10
while [ $var1 -gt 0 ]
do 
    echo $var1
    var1=$[ $var1 - 1 ] 
done

# Multiple test commands
var1=10
while echo $var1                    # Condition 1
    [ $var1 -ge 0 ]                 # Condition 2
do 
    echo "This is insider the loop" 
    var1=$[ $var1 - 1 ]
done

# The Until Command 
var1=100
until [ $var1 -eq 0 ]
do 
    echo $var1
    var1=$[ $var1 - 25 ]
done

# Nesting Loops
for (( a = 1; a <= 3; a++ )) 
do 
    echo "Starting loop $a:"
    for (( b = 1; b <= 3; ++b )) 
    do
        echo " Inside loop: $b"
    done
done

# Break & Continue
for var1 in 1 2 3 4 5
do 
    if [ $var1 -eq 5 ] 
    then 
        break
    fi
    echo "Hello: $var1"
done
echo "The for loop is completed"

# Breaking out of an outer loop
for var1 in 1 2 3 4 5
do 
    if [ $var1 -eq 5 ] 
    then 
        break 2                 # 2 meaning next level of loop, 1 is current loop
    fi
    echo "Hello: $var1"
done
echo "The for loop is completed"

# Process the output of a loop
for (( a = 1; a < 10; ++a ))
do  
    echo "The number is $a"
done > file.txt
echo The command is finished.










































