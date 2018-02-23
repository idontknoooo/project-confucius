# GDB Tutorial
# GNU Debugger: A debugger is a program that runs other programs, allowing the user to exercise control over these programs, and to examine variables when problems arise.
# 1. Installation:
#   gdb -help
#   sudo apt-get install libc6-dbg gdb valgrind
# 2. Debugging Sysbols
#   gcc hello.cc -o hello  # normal compile
#   gcc -g hello.cc -o hello  # compile -g file use gdb
# 3. Commands
# b main - Puts a breakpoint at the beginning of the program
# b - Puts a breakpoint at the current line
# b N - Puts a breakpoint at line N
# b +N - Puts a breakpoint N lines down from the current line
# b fn - Puts a breakpoint at the beginning of function "fn"
# d N - Deletes breakpoint number N
# info break - list breakpoints
# r - Runs the program until a breakpoint or error
# c - Continues running the program until the next breakpoint or error
# f - Runs until the current function is finished
# s - Runs the next line of the program
# s N - Runs the next N lines of the program
# n - Like s, but it does not step into functions
# u N - Runs until you get N lines in front of the current line
# p var - Prints the current value of the variable "var"
# bt - Prints a stack trace
# u - Goes up a level in the stack
# d - Goes down a level in the stack
# q - Quits gdb

http://web.eecs.umich.edu/~sugih/pointers/
https://www.cs.cmu.edu/~gilpin/tutorial/
http://www.gnu.org/software/gdb/documentation/
