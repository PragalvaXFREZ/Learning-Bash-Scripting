#!/bin/bash

# Use absolute path if possible
LOG_DIR="."  
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

echo "analysing log files"
echo "=================="

echo -e "\n List of log files updated in last 24 hours"
# Example: find /Users/John/logs -name "*.log" -mtime -1
find "$LOG_DIR" -name "*.log" -mtime -1

echo -e "\n searching for ERROR logs in application.log file"
grep "ERROR" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\n Number of ERROR logs found in application.log"
grep -c "ERROR" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\n searching for FATAL logs found in application.log"
grep "FATAL" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\n Number of FATAL logs found in application.log"
grep -c "FATAL" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\n No of FATAL logs in system.log"
grep -c "FATAL" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\n No of CRITICAL logs in system.log"
grep -c "CRITICAL" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\n Searching for CRITICAL logs in system.log"
grep "CRITICAL" "$LOG_DIR/$SYS_LOG_FILE"

