#!/bin/bash

mongoDbInstallation () {
	echolog ""
	echolog ""
	echolog "${YELLOW}┏ ---------------------"
	echolog ""
	echolog "  Installing ${BOLD}MongoDB${NOSTYLE}"
	echolog ""
	echolog "  Updating Repos"
	echolog ""
	# sudo apt-get update
	echolog ""
	echolog "  Installing MongoDB Package"
	echolog ""
	if [ "$UBUNTU_GREATER" = true ]; then
		sudo apt-get install -y mongodb
	else
		sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
		echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
		sudo apt-get update
		sudo apt-get install -y mongodb-org
		sudo systemctl start mongod
	fi
	echolog ""
	echolog "  MongoDB Installed"
	echolog ""
	echolog "  Adding MongoDB to Auto Start"
	echolog ""
	if [ "$UBUNTU_GREATER" = true ]; then
		sudo systemctl enable mongodb.service
	else
		sudo systemctl enable mongod.service
	fi
	echolog ""
	echolog "  MongoDB Added to Auto Start"
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}"
	changeMongoDbIcon
}