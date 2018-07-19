:: Comment in .bat
rem comment in .bat, remark
:: 1. Can read input from user
:: 2. Has control structure like if, loop etc
:: 3. Support functions & arrays
:: 4. Support regular expression
:: 5. Can include other language like Perl

:: Common use
:: Setting up servers for different purposes
:: House keeping such as delete files
:: Auto deployment

:: Print to screen (echo)
echo Hello word
:: Display file (cat)
type file.txt
:: Delete file (rm)
del file.txt
:: Delete all files in current dir with prompts and warnings
:: Hidden, system, read-only are not affected
del . 
:: version
ver
:: Displays all the file extension
assoc
assoc | find ".txt" :: pipe to search where file have .txt 
:: Change directory (cd)
cd directory
:: Clear Screen (clear)
cls
:: Copy (cp)
copy source destination
:: List file (ls)
dir /s :: recursively all files 
dir /s /b :: one file per line 
dir *.txt :: List all file with .txt extension
dir /a :: include hidden files and system files
dir /ah :: only hidden files
:: Date
date
echo %date%
:: Pause, pause program for until user press something
pause
:: exit powershell (exit)
exit
:: Make directory (mkdir)
md dir_name
:: Remove directory (rmdir)
rd dir_name 
:: Move (mv)
move here there
:: Path, display the contents of the PATH variable
path
:: prompt, change prompt
prompt :: keep default
prompt heheheh :: change current to heheheh
:: rename (mv)
ren old new :: `move` also works
:: start a program in a new window
start notepad.exe
start file.txt
:: time
echo %time%
:: type (cat)
type file.txt 
:: display current volume
vol
:: display the attributes of the files in current directory
attrib 
attrib +r file.txt :: add read-only attribute to file
attrib -a file.txt :: remove archived attribute from the file
:: check disk
chkdsk
:: choice https://www.tutorialspoint.com/batch_script/batch_script_choice.htm
choice /c ABC /m "What is your option A, B or C"

