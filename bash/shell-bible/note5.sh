# Presenting Data
# 0 STDIN  Stardard Input
# 1 STDOUT Stardard Output
# 2 STDERR Stardard Error 
ls -al test test2 test3 badtest 2> test6 1> test7   # 2> | redirect STDERR
ls -al test test2 test3 badtest &> test7            # &> | redirect STDERR & STDOUT

# Redirecting input in scripts
exec 0< testfile

# Creating your own redirection

# Redirect to null
badfile 2> /dev/null

# Make tmp file
mktemp testing.XXXXXX  # Have to be 6 cap X
mktemp -t test.XXXXXX  # In tmp/
./input19.sh           # Creating temporary directory

# Logging Messages 
tee filename           # Creating logging file
date | tee -a testfile # Log

