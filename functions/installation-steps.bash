#!/bin/bash

installationSteps () {
	# Clearing Screen
	clear

	echolog "" $MAIN_INSTALLTION_NAME
	echolog "${LIGHTCYAN} ${BOLD}You have agreed, So let's setup your server.${NOSTYLE}" $MAIN_INSTALLTION_NAME
	echolog "" $MAIN_INSTALLTION_NAME
	echolog "" $MAIN_INSTALLTION_NAME

	PS3='Select Packages to install: '
	installationOptions=("$WEBSERVER_ICON Web Servers" "$DATABASES_ICON Databases" "$HTTPSERVER_ICON HTTP Servers" "Misc" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$WEBSERVER_ICON Web Servers")
					echolog "You Chose WebServers" $MAIN_INSTALLTION_NAME
					webServersInstallationSteps
					;;
			"$DATABASES_ICON Databases")
					echolog "You chose Databases" $MAIN_INSTALLTION_NAME
					databasesInstallation
					;;
			"$HTTPSERVER_ICON HTTP Servers")
					echolog "You chose HTTP Servers" $MAIN_INSTALLTION_NAME
					httpServersInstallation
					;;
			"Misc")
					miscInstallation
					;;
			"Quit")
					exit
					break
					;;
			*) echolog "invalid option $REPLY" $MAIN_INSTALLTION_NAME;;
    esac
	done	
}