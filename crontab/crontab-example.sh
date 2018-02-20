#!/bin/bash

MAILTO=your@email.com

# Exmaple 1: Activate virtual environment and start python code at 8-16 (military time). Run every 1 min.
*/1 8-16 * * 1-5 source "venv/bin/activate" ; python /home/somefile.py >> somefile_log.log 
# Exmaple 2: Activate virtual environment and start python code at 8-16 (military time), 20min after :00. Append log to log file
20 8-16 * * 1-5 source "venv/bin/activate" ; python /home/somefile.py >> somefile_log.log 
