#!/bin/bash

echolog () (
	if [ "$2" != "" ]; then
		LOG_FILE_NAME=$2
	else
		LOG_FILE_NAME=$MAIN_INSTALLATION_NAME
	fi
	echo -e $1
	echo -e $1 >> $LOG_FILE_PATH/$LOG_FILE_NAME.log
)