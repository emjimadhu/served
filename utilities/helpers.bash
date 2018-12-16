#!/bin/bash

echolog () (
	echolog $1
	echolog $1 >> $LOG_FILE_PATH/$LOG_FILE_NAME.log
)