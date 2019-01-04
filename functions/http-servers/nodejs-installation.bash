#!/bin/bash

nodeJSInstallation () {
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "${LIGHTCYAN} ${BOLD}NodeJS Installation.${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG

	PS3='Select which NodeJS to Install: '
	installationOptions=("$NODE_ICON Distro Stable Version" "$NODE_ICON Custom PPA" "$NODE_ICON Node Version Manager (NVM) [It will lastest Stable version of the Time.]" "Go to Main Steps" "Quit")
	select opt in "${installationOptions[@]}"
	do
    case $opt in
			"$NODE_ICON Distro Stable Version")
					echolog "You chose NodeJS Installation" $NODEJS_INSTALLATION_LOG
					nodeJSDistroInstallation
					sleep 5s
					nodeJSInstallation
					break
					;;
			"$NODE_ICON Custom PPA")
					echolog "You chose NodeJS Installation" $NODEJS_INSTALLATION_LOG
					nodeJSPPAInstallation
					sleep 5s
					nodeJSInstallation
					break
					;;
			"$NODE_ICON Node Version Manager (NVM) [It will lastest Stable version of the Time.]")
					echolog "You chose NodeJS Installation" $NODEJS_INSTALLATION_LOG
					nodeJSNVMInstallation
					sleep 5s
					nodeJSInstallation
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