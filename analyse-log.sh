#!/bin/bash

LOG_DIR="."
ERROR_PATTERN=("ERROR" "FATAL" "CRITICAL")

echo "analysing log files"
echo "=================="

echo -e "\nList of log files updated in last 24 hours"
LOG_FILES=$(find "$LOG_DIR" -name "*.log" -mtime -1)
echo "$LOG_FILES"

# iterate over each found file
for LOG_FILE in $LOG_FILES; do

echo -e "\n"
echo "-------------------------------"
echo "Analyzing file: $LOG_FILE"
echo "-------------------------------"

for PATTERN in "${ERROR_PATTERN[@]}"; do

    echo -e "\n--- Processing: $LOG_FILE ---"

    echo -e "\nSearching for $PATTERN logs in $LOG_FILE"
    grep "$PATTERN" "$LOG_FILE"

    done
done
