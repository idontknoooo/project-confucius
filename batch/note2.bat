:: Start from command 26 https://www.tutorialspoint.com/batch_script/batch_script_commands.htm
:: Create a command environment inside of this environment, same as `bash` in linux
cmd
:: Compare 2 files: `diff` in linux
COMP C:\tp\lists.txt C:\tp\listsA.txt
:: Convert a volume from FAT16 or FAT32 file system to NTFS file system
CONVERT C:\
:: Show device
driverquery
:: Extract files from compressed .cab cabinet files
EXPAND file.cab
:: Search a string in file or input, outputting matching lines
FIND "Application" C:\tp\lists.txt
:: Current working directory, `.` in linux
%cd%
:: Format a disk
format D:\
:: Help will list help for command
help
:: Display Windows IP configuration
ipconfig
:: Adds, sets or removes a disk label
label
:: Display the contents of a file, one screen at a time
MORE filename
:: Network service
net
NET user
:: ICMP/IP "echo" packets over network to the designated address
ping 127.0.0.1
:: Shutdown computer
shutdown
:: Sort input from source file
sort C:\tp\lists.txt
:: Assign a drive letter to a local folder, displays current assignments
Subst p: 
:: Show configuration of a computer and its operating system
systeminfo
:: Ends one or more task
Taskkill /im mspaint.exe
:: List tasks including task name and process id(PID)
tasklist
:: copy file and dir in a more advanced way
xcopy c:\lists.txt c:\tp\
:: Display a tree of all sub-dir of the current dir to any level of revursion or depth
tree
:: The batch command lists the actual differences between two files
fc lists.txt listsA.txt
:: Create a new file
notepad filename.txt
:: Show and configures the projects of disk partitions
Diskpart 
:: Set the title displayed in the console window
title "New Windows Title"
:: Display the list of environment variables on the current system
set

