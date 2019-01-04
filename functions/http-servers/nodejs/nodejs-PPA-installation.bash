#!/bin/bash

nodeJSPPAInstallation () {
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
	echolog "  Back to ${pwd}" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	cd ~
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Downloading ${ITALICS}10.x${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Running ${ITALICS}nodesource_setup.sh${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	sudo bash nodesource_setup.sh
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Installing NodeJS PPA Package" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	sudo apt-get install nodejs
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  NodeJS Installed" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "Installed NodeJS version: $(nodejs -v)"  $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  NPM Installed" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "Installed NPM version: $(npm -v)"  $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	changeNodeIcon
}