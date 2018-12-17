#!/bin/bash

miscInstallation () {
	if [ "$1" != "skip" ]; then
		# Clearing Screen
		clear
	fi

	echolog ""
	echolog "${LIGHTCYAN} ${BOLD}Misc Installation.${NOSTYLE}"
	echolog ""
	echolog ""

	PS3='Select which Database to Install: '
	installationOptions=("Let's Encrypt SSL" "Go to Main Steps" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"Let's Encrypt SSL")
					letsencryptInstallation
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