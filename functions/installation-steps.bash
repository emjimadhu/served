#!/bin/bash

installationSteps () {
	# Clearing Screen
	clear

	echo ""
	echo -e "${LIGHTCYAN} ${BOLD}You have agreed, So let's setup your server.${NOSTYLE}"
	echo ""
	echo ""

	PS3='Select Packages to install: '
	installationOptions=("$WEBSERVER_ICON Web Servers" "HTTP Servers" "Databases" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$WEBSERVER_ICON Web Servers")
					webServersInstallationSteps
					;;
			"HTTP Servers")
					echo "You selected HTTP Servers"
					;;
			"Databases")
					echo "you chose choice $REPLY which is $opt"
					;;
			"Quit")
					exit
					break
					;;
			*) echo "invalid option $REPLY";;
    esac
	done	
}