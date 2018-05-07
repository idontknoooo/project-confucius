#!/bin/bash

# Mail error and logs to email 
MAILTO=jzuo@capstoneco.com

# Shortcuts 
# Change current working directory
CUR_DIR=/home/jzuo/repos/rveq/bin/uat
# Python version path
PY=/home/jzuo/virtual_environments/rveq/bin/python
# Log home directory
LOG_HOME=/home/jzuo/repos/vb/log
# Current Dir 
LOG_CURRENT=$LOG_HOME/current
# Historical Dir
LOG_HISTORICAL=$LOG_HOME/historical
# Fresh alert Dir
LOG_FRESH=$LOG_HOME/fresh
# Chart Dir
LOG_CHART=$LOG_HOME/chart
# Realized directory
LOG_REALIZED=$LOG_HOME/realized 
# ---------------------------- CURRENT --------------------
# Time from 9:00 - 16:00, run every 15 minutes
# RV current
0-56/12 09-15 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/tidal/tidal_rv.py > /dev/null 2>&1 >> $LOG_CURRENT/rv.log

# Skew Current
1-57/13 09-15 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/tidal/tidal_skew.py > /dev/null 2>&1 >> $LOG_CURRENT/skew.log

# Rd current
2-58/14 09-15 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/tidal/tidal_rd.py > /dev/null 2>&1 >> $LOG_CURRENT/rd.log

# DC
3-59/15 09-15 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/tidal/tidal_dc.py > /dev/null 2>&1 >> $LOG_CURRENT/dc.log


# ------------------------- HISTORICAL ----------------------------
# RV Historical
00 05 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/logic/src/main_rv.py > /dev/null 2>&1 >> $LOG_HISTORICAL/rv.log

# Skew Historical
10 05 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/logic/src/main_skew.py > /dev/null 2>&1 >> $LOG_HISTORICAL/skew.log

# RD Historical
25 05 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/logic/src/main_rd.py > /dev/null 2>&1 >> $LOG_HISTORICAL/rd.log

# DC Historical: Need wait for KD to refresh in UAT 
59 08 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/logic/src/main_dc.py > /dev/null 2>&1 >> $LOG_HISTORICAL/dc.log

# ---------------------------- Fresh Alert -----------------------------
# EOD for historical fresh alert
00 19 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/logic/src/tmp_to_pmt_hist_fresh.py > /dev/null 2>&1 >> $LOG_FRESH/hist.log

# EOD for current fresh alert
00 19 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/logic/src/tmp_to_pmt_cus_fresh.py > /dev/null 2>&1 >> $LOG_FRESH/cus.log

# ------------------------------ Add new data to chart ------------------
# Also need to wait for KD 
05 08 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/logic/src/chart.py > /dev/null 2>&1 >> $LOG_CHART/chart.log


# ------------------------------ Get realized data ------------------------
10 08 * * 1-5 source "/home/jzuo/.bashrc" ; cd $CUR_DIR ; $PY $CUR_DIR/logic/src/populate_dc_realized.py > /dev/null 2>&1 >> $LOG_REALIZED/dc.log 

