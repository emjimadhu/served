#!/bin/bash

miscInstallation () {
	if [ "$1" != "skip" ]; then
		# Clearing Screen
		clear
	fi

	echolog "" $MISC_INSTALLATION
	echolog "${LIGHTCYAN} ${BOLD}Misc Installation.${NOSTYLE}"  $MISC_INSTALLATION
	echolog ""  $MISC_INSTALLATION
	echolog ""  $MISC_INSTALLATION

	PS3='Select which Database to Install: '
	installationOptions=("$LETSENCRYPT_ICON Let's Encrypt SSL" "Add New User" "Go to Main Steps" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$LETSENCRYPT_ICON Let's Encrypt SSL")
					letsencryptInstallation
					sleep 5s
					miscInstallation
					break
					;;
			"Add New User")
					addUser
					sleep 5s
					miscInstallation
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