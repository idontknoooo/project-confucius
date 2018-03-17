#!/bin/bash
# Testing $* and $@
echo "Using the \$* method: $*"
echo "Using the \$@ method: $@"

count=1
for param in "$*"
do
    echo "\$* Parameter #$count = $param"
    count=$[ $count + 1 ]
done

count=1
for param in "$@"
do 
    echo "\$@ Parameter #$count = $param"
    count=$[ $count + 1 ]
done
