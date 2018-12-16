#!/bin/bash

webServersInstallationSteps () {
	if [ "$1" != "skip" ]; then
		# Clearing Screen
		clear
	fi

	echo ""
	echo -e "${LIGHTCYAN} ${BOLD}Web Server Installation.${NOSTYLE}"
	echo ""
	echo ""

	PS3='Select which Web Server to Install: '
	installationOptions=("$NGINX_ICON NGINX" "Go to Main Steps" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$NGINX_ICON NGINX")
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
			*) echo "invalid option $REPLY";;
    esac
	done
}