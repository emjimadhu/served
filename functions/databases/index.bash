#!/bin/bash

databasesInstallation () {
	if [ "$1" != "skip" ]; then
		# Clearing Screen
		clear
	fi

	echo ""
	echo -e "${LIGHTCYAN} ${BOLD}Databases Installation.${NOSTYLE}"
	echo ""
	echo ""

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
			*) echo "invalid option $REPLY";;
    esac
	done
}