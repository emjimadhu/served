#!/bin/bash

mongoDbInstallation () {
	echolog "" $MONGODB_INSTALLATION_LOG
	echolog "" $MONGODB_INSTALLATION_LOG
	echolog "${YELLOW}┏ ---------------------" $MONGODB_INSTALLATION_LOG
	echolog "" $MONGODB_INSTALLATION_LOG
	echolog "  Installing ${BOLD}MongoDB${NOSTYLE}" $MONGODB_INSTALLATION_LOG
	echolog "" $MONGODB_INSTALLATION_LOG
	echolog "  Updating Repos" $MONGODB_INSTALLATION_LOG
	echolog "" $MONGODB_INSTALLATION_LOG
	sudo apt-get update
	echolog "" $MONGODB_INSTALLATION_LOG
	echolog "  Installing MongoDB Package" $MONGODB_INSTALLATION_LOG
	echolog "" $MONGODB_INSTALLATION_LOG
	if [ "$UBUNTU_GREATER" = true ]; then
		sudo apt-get install -y mongodb
	else
		sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
		echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
		sudo apt-get update
		sudo apt-get install -y mongodb-org
		sudo systemctl start mongod
	fi
	echolog "" $MONGODB_INSTALLATION_LOG
	echolog "  MongoDB Installed" $MONGODB_INSTALLATION_LOG
	echolog "" $MONGODB_INSTALLATION_LOG
	echolog "  Adding MongoDB to Auto Start" $MONGODB_INSTALLATION_LOG
	echolog "" $MONGODB_INSTALLATION_LOG
	if [ "$UBUNTU_GREATER" = true ]; then
		sudo systemctl enable mongodb.service
	else
		sudo systemctl enable mongod.service
	fi
	echolog "" $MONGODB_INSTALLATION_LOG
	echolog "  MongoDB Added to Auto Start" $MONGODB_INSTALLATION_LOG
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}" $MONGODB_INSTALLATION_LOG
	changeMongoDbIcon
}