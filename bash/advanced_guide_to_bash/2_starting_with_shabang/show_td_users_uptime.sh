#!/bin/bash

LOG_FILE=sample_log.out
#Step 1: the time and date
date > $LOG_FILE

#step 2: logged in users
who >> $LOG_FILE

#step 3: show system uptime
uptime >> $LOG_FILE

