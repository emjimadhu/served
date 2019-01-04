#!/bin/bash

nodeJSNVMInstallation () {
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
	echolog "  Downloading ${ITALICS}NVM Script File${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Running ${ITALICS}NVM Script File${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	bash install_nvm.sh
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  It will install the software into a subdirectory of your home directory at ${ITALICS}~/.nvm${NOSTYLE}. It will also add the necessary lines to your ${ITALICS}~/.profile${NOSTYLE} file to use the file." $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Souarcing the file to take control of ${ITALICS}~/.profile${NOSTYLE} NVM file so that your current session knows about the changes." $NODEJS_INSTALLATION_LOG
	source ~/.profile
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Installing NodeJS NVm Stable Version Package" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	nvm install stable
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  Node Installed" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "Installed Node version: $(node -v)"  $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "  NPM Installed" $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "Installed NPM version: $(npm -v)"  $NODEJS_INSTALLATION_LOG
	echolog "" $NODEJS_INSTALLATION_LOG
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}" $NODEJS_INSTALLATION_LOG
	changeNodeIcon
}