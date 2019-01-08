#!/bin/bash

addUser () {
	echolog ""
	echolog "" $ADD_USER_LOG
	echolog "${YELLOW}┏ ---------------------" $ADD_USER_LOG
	echolog "" $ADD_USER_LOG
	echolog "  Adding ${BOLD}User${NOSTYLE}" $ADD_USER_LOG
	echolog "" $ADD_USER_LOG
	echolog " Enter a preferred Username for the user:" $ADD_USER_LOG
	read username
	echolog "" $ADD_USER_LOG
	echolog " Creating a user ${BOLD}$username${NOSTYLE}" $ADD_USER_LOG

	sudo adduser $username

	echolog "" $ADD_USER_LOG
	echolog " User ${BOLD}$username${NOSTYLE} Created!" $ADD_USER_LOG
	echolog "" $ADD_USER_LOG
	echolog "${LIGHTCYAN}Would you like to give this user ${BOLD}Root Privilage${NOSTYLE}? [Y/n] ${NOSTYLE}" $ADD_USER_LOG
	read giveuserroot

	if [ "$giveuserroot" = "y" -o "$giveuserroot" = "Y" -o "$giveuserroot" = "" ]; then
		echolog "You Agreed" $ADD_USER_LOG
		echolog "" $ADD_USER_LOG
		echolog " Giving user ${BOLD}$username${NOSTYLE} Root Privilages" $ADD_USER_LOG
		sudo usermod -aG sudo $username
		echolog "" $ADD_USER_LOG
		echolog " Now user ${BOLD}$username${NOSTYLE} has Root Privilages!" $ADD_USER_LOG
		echolog "" $ADD_USER_LOG
		echolog " All Hail ${BOLD}$username${NOSTYLE}!" $ADD_USER_LOG
	else
		echolog "You Disagreed." $ADD_USER_LOG
	fi
	echolog "" $ADD_USER_LOG
	echolog "" $ADD_USER_LOG
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}" $ADD_USER_LOG
}