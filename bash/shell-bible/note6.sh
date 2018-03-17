#!/bin/bash
# 1  SIGNUP  Hang up the process
# 2  SIGINT  Interrupt the process
# 3  SIGQUIT Stop the process
# 9  SIGKILL Unconditionally terminate the process
# 15 SIGTERM Terminate the process if possible
# 17 SIGSTOP Unconditionally stop, but don't terminate the process
# 18 SIGTSTP Stop or pause the process, but don't terminate
# 19 SIGCONT Continue a stopped process

# Gererating signals
sleep 100   # Pause 100 seconds
exit        # Quit 
kill -9 PID # Kill process by PID
./input21.sh
trap command signals
EXIT        # When normal exit, the trap is triggered, and the shell executes the command you specify on the trap command 
./input22.sh
trap        # Clean up temp fils | Ignore signals

# Running Scripts without a console
nohup ./input22.sh & # Run another command blocking any SIGNUP signals that are sent to the process. Run backend and you can quit terminal
cat nohup.txt        # The output from previous command
jobs                 # Check running scripts (backends)
                     # Job option
-l                   # List PID of the process along with job number
-n                   # List only jobs that have chagned their status since the last notification from the shell
-p                   # List only the PIDs of the jobs
-r                   # List only the running jobs
-s                   # List only stopped jobs
ctrl+z               # Pause process
bg                   # Check Background process
fg                   # Call backend process to Front end

# Being Nice | The nicer the application, the lower the priority
# in `ps` command `NI` column is number of nice
nice -n 10 ./test4 > test4out & # nice command allows you to set the scheduling priority of a command as you start it. 
renice 10 -p PID                # renice command automatically updates the scheduling priority of the running process

# Scheduling a job using `at`
at [ -f filename ] time

# Cron table
