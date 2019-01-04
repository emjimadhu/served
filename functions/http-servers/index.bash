#!/bin/bash

# Importing NodeJS Functions
. functions/http-servers/nodejs/nodejs-distro-installation.bash
. functions/http-servers/nodejs/nodejs-PPA-installation.bash
. functions/http-servers/nodejs/nodejs-NVM-installation.bash

httpServersInstallation () {
	if [ "$1" != "skip" ]; then
		# Clearing Screen
		clear
	fi

	echolog "" $HTTPSERVER_INSTALLATION
	echolog "${LIGHTCYAN} ${BOLD}HTTP Server Installation.${NOSTYLE}" $HTTPSERVER_INSTALLATION
	echolog "" $HTTPSERVER_INSTALLATION
	echolog "" $HTTPSERVER_INSTALLATION

	PS3='Select which HTTP Server to Install: '
	installationOptions=("$NODE_ICON NodeJS" "Go to Main Steps" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$NODE_ICON NodeJS")
					echolog "You chose NodeJS Installation" $HTTPSERVER_INSTALLATION
					nodeJSInstallation
					sleep 5s
					httpServersInstallation
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