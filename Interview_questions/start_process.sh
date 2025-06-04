#!/bin/bash

PROCESS_NAME="nginx"
START_COMMAND="sudo systemctl start nginx"

if pgrep -x "$PROCESS_NAME" > /dev/null
then
   echo "Process is already running."
else
   echo " Process is not running. Starting it now..."
   eval "$START_COMMAND"
   if [ $? -eq 0 ]; then
        echo "$PROCESS_NAME started successfully."
    else
        echo "Failed to start $PROCESS_NAME."
    fi
fi