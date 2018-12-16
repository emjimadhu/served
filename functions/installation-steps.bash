#!/bin/bash

installationSteps () {
	# Clearing Screen
	clear

	echo ""
	echo -e "${LIGHTCYAN} ${BOLD}You have agreed, So let's setup your server.${NOSTYLE}"
	echo ""
	echo ""

	PS3='Select Packages to install: '
	installationOptions=("$WEBSERVER_ICON Web Servers" "$DATABASES_ICON Databases" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$WEBSERVER_ICON Web Servers")
					webServersInstallationSteps
					;;
			"$DATABASES_ICON Databases")
					databasesInstallation
					;;
			"Quit")
					exit
					break
					;;
			*) echo "invalid option $REPLY";;
    esac
	done	
}