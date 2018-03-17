# Input & Output
./input.sh 3 4 2

./input2.sh 1 2 3 4 5 6 7 8 9 10 11 12

# Reading the program name
./addem 2 4
# basename $0: basename will eliminate './' when do `./addem 2 4`
./multem 2 9

# Testing parameter
./input4.sh 2 9
# $#: Number of input variable

# Special Parameter Variables
./input5.sh
./input5.sh 1 2 3 4 5

# Grabbing all the data
./input6.sh rich jordan funny
# $*: Takes all of the parameters supplied on the command line as a single word.
# $@: Takes all of the parameters supplied on the command line as separate words in the same string.

# Being shifty
shift n # Shift input down by n
./input7.sh a b c d e

# Working with options
./input8.sh -a -b

# Separate options from parameters
./input9.sh -a -b -c test1 test2 test3
./input9.sh -a -b -c -- test1 test2 test3

# Processing options with values
./input10.sh -a -b test1 -d
./input10.sh -ac

# getopt options optstring parameters
getopt ab:cd:ef -a -b test1 -cd test2 -efg test3
./input11.sh -ac
./input11.sh -a -b test1 -cd "test2 test3" test4

# The more advanced getopts
getopts     # with a 's'
./input12.sh -ab test1 -c

# Standardizing Options
-a # Show all objects
-c # Produce a count 
-d # Specify a directory
-e # Expand an object
-f # Specify a file to read data from
-h # Display a help message for the command 
-i # Ignore text case
-l # Produce a long format version of the output
-n # Use a non-interactive (batch) mode
-o # Specify an output file to redirect all output to
-q # Run in quiet mode
-r # Process directories and files recursively
-s # Run in silent mode
-v # Produce verbose output
-x # Exclude and object
-y # Answer yes to all questions

# Getting user input
read -p "Enter a number: "          # Read user input
$REPLY                              # Receiver
./input13.sh

# Timing out
./input15.sh

# Non-interactive
./input14.sh

# Silent: for password
./input16.sh

# Read from file
./input17.sh

