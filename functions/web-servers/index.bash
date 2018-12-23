#!/bin/bash

webServersInstallationSteps () {
	if [ "$1" != "skip" ]; then
		# Clearing Screen
		clear
	fi

	echolog "" $WEBSERVER_INSTALLATION
	echolog "${LIGHTCYAN} ${BOLD}Web Server Installation.${NOSTYLE}" $WEBSERVER_INSTALLATION
	echolog "" $WEBSERVER_INSTALLATION
	echolog "" $WEBSERVER_INSTALLATION

	PS3='Select which Web Server to Install: '
	installationOptions=("$NGINX_ICON NGINX" "Go to Main Steps" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$NGINX_ICON NGINX")
					echolog "You chose NGINX Installation" $WEBSERVER_INSTALLATION
					nginxInstallation
					sleep 5s
					webServersInstallationSteps
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