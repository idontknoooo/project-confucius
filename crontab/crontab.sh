#!/bin/bash

MAILTO=your@email.com

####### SAVE VOL PARAMS TO JEREMYS DATABASE MINUTELY ##########   
*/1 8-16 * * 1-5 source "/home/uemekli/.bashrc" ; python /home/uemekli/local/scripts/saveToJeremyDB.py --core-config  /var/ctp/uemekli/git/ctp_cfg/etc/prod/ctpcore.cfg > /home/uemekli/log/saveToJeremyDB.log 
####### SEND PNL RECONCILIATION EMAIL ############# 
20 08 * * 1-5 source "/home/uemekli/.bashrc" ; python /home/uemekli/local/scripts/pnl_rec.py >> /home/uemekli/log/pnl_rec.log 
####### BOOK DELTA TRANSFERS  #################    
20 16 * * 1-5 source "/home/uemekli/.bashrc" ; python /home/uemekli/local/scripts/transferDeltas.py --core-config  /var/ctp/uemekli/git/ctp_cfg/etc/prod/ctpcore.cfg > /home/uemekli/log/transferDeltas.log 
29 16 * * 1-5 source "/home/uemekli/.bashrc" ; python /home/uemekli/local/scripts/transferDeltas.py --commit --core-config  /var/ctp/uemekli/git/ctp_cfg/etc/prod/ctpcore.cfg > /home/uemekli/log/transferDeltas.log
####### INITIALIZE TICKERS #################
00 03 * * 1-5 source "/home/uemekli/.bashrc" ; python /home/uemekli/vixrv/vixrv/scripts/run_request_marketprice.py -t UXUX >> /home/uemekli/log/marketprices.log

# A. Crontab Reference 
# http://www.adminschoice.com/crontab-quick-reference

# B. Crontab Command
# crontab -e: Edit crontab file
# crontab -l: List crontab file
# crontab -r: Remove your crontab file
# crontab -v: Display the last time you edited your crontab file 

# C. Crontab Syntax 
# *     *     *   *    *        command to be executed
# -     -     -   -    -
# |     |     |   |    |
# |     |     |   |    +----- day of week (0 - 6) (Sunday=0)
# |     |     |   +------- month (1 - 12)
# |     |     +--------- day of        month (1 - 31)
# |     +----------- hour (0 - 23)
# +------------- min (0 - 59)

# 	Repeat syntax like '/2' may not work for all system 
#	Month day and weekday is cumulative 

# D. Examples
# M     H  	Day/m 	Month 	Day/w 	Explain
# 30	0	1		1,6,12	*		— 00:30 Hrs  on 1st of Jan, June & Dec.
# 0 	20	*		10		1-5		–8.00 PM every weekday (Mon-Fri) only in Oct.
# 0		0	1,10,15	*		*		— midnight on 1st ,10th & 15th of month
# 5,10	0	10		*		1		— At 12.05,12.10 every Monday & on 10th of every month

# E. Crontab Environment 
# 	Crontab support a default environment for every shell 
# HOME=user's home directory
# LOGNAME=user's login id
# PATH=/usr/bin:/usr/sbin:
# SHELL=/usr/bin/sh 

# F. Email 
#	By Default, crontab will send a email to user account exectuing the cronjob
# MAILTO=change_your_email@email.com 
# >/dev/null 2>&1 	# Add this at the end of each cronjob to disable email

# G. Generate log 
# >> log/file/path/log_file_name.log 	# add this before disable email but after the command of your cronjob 

# H. File location 
# Mac OS X
# 	/usr/lib/cron/tabs/
# BSD Unix 
# 	/var/cron/tabs/
# Solaris, HP-UX, Debian, Ubuntu
# 	/var/spool/cron/crontabs/
# AIX, Red Hat Linux, CentOS, Ferdora ( my company use Red Hat)
# 	/var/spool/cron/