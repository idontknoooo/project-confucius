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
