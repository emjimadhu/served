#!/bin/bash

installationSteps () {
	# Clearing Screen
	clear

	echolog ""
	echolog "${LIGHTCYAN} ${BOLD}You have agreed, So let's setup your server.${NOSTYLE}"
	echolog ""
	echolog ""

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
			*) echolog "invalid option $REPLY";;
    esac
	done	
}