#!/bin/zsh                         # Shebang | Shell Bang | Hash Bang
/                                  # the root directory
/bin                               # executable/binary files
/dev                               # device files
/home                              # personal work directory, default place after logged in
/etc                               # configuration files & some executable shell files
/usr/include                       # header files
/usr/lib                           # libraries
/usr/bin/                          # more executables
/sbin                              # executables which can only be executed by the super user (root)
echo $SHELL                        # print to console
pwd                                # display current full directory path
cat /etc/shells                    # concatenate to console 
ps                                 # show current processes
ps --help                          # check help
ps -u                              # check current user process 
cd Documents                       # make Current Directory 'documents'
cd ~                               # go to home directory. ~ is shortcut for home directory
mv a.out ~                         # move a.out to home folder
mv a.out b.out                     # change name of a.out to b.out
rm -r folder                       # recursively remove everything in folder named 'folder'
rm a.out                           # remove file named a.out
mkdir new_dir                      # create a new directory
rmdir new_dir                      # remove a directory
ls                                 # list files in directory
ll                                 # list detail of files 
ls *.doc                           # list all files end with '.doc', '*' matches multiple characters
ls ?.doc                           # ? match only single character
ls [ab].doc                        # list a.doc or b.doc
touch a.out                        # create a new file call a.out
wc                                 # word count
wc -l < a.out                      # input redirection. count # of lines in linux.sh
ls > a.out                         # output redirection. Remove everything in new direction and add output to it.
ls >> a.out                        # append output. Append ls to linux.sh file
ps aux | grep root                 # use output from `ps aux` as input of `grep root [here]` 
date                               # show date. Sun Feb 25 01:42:00 EST 2018
date --date="next sun"             # show date of next Sunday
date +%Y-%m-%d                     # show date in yyyy-mm-dd format.
date +%F                           # same as above
date +%a                           # show abbreviation of current day in English
date +%b                           # show abbreviation of current month in English
chmod u+r,g+r,o+rw,a+x file_name   # change read/write/execute permission for user(u),group(g),owner(o),all(a) users
chmod u-r                          # remove permission read from user
chgrp                              # change group
chown                              # change ownership 
