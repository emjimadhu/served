#!/bin/bash

databasesInstallation () {
	if [ "$1" != "skip" ]; then
		# Clearing Screen
		clear
	fi

	echolog ""
	echolog "${LIGHTCYAN} ${BOLD}Databases Installation.${NOSTYLE}"
	echolog ""
	echolog ""

	PS3='Select which Database to Install: '
	installationOptions=("$MONGODB_ICON MongoDB" "Go to Main Steps" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$MONGODB_ICON NGINX")
					mongoDbInstallation
					sleep 5s
					databasesInstallation
					break
					;;
			"Go to Main Steps")
					installationSteps
					;;
			"Quit")
					exit
					break
					;;
			*) echolog "invalid option $REPLY";;
    esac
	done
}