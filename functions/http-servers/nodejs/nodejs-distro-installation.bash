#!/bin/bash

nodeJSDistroInstallation () {
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "${YELLOW}┏ ---------------------" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Installing ${BOLD}NodeJS${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Updating Repos" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	sudo apt-get update
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Installing NodeJS Distro Package" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	sudo apt-get install nodejs
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  NodeJS Installed" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "Installed NodeJS version: $(nodejs -v)"  $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Installing NPM Distro Package" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	sudo apt-get install npm
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  NPM Installed" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "Installed NPM version: $(npm -v)"  $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	changeNodeIcon
}