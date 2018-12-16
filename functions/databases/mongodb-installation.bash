#!/bin/bash

mongoDbInstallation () {
	echo ""
	echo ""
	echo -e "${YELLOW}┏ ---------------------"
	echo ""
	echo -e "  Installing ${BOLD}MongoDB${NOSTYLE}"
	echo ""
	echo -e "  Updating Repos"
	echo ""
	# sudo apt-get update
	echo ""
	echo -e "  Installing MongoDB Package"
	echo ""
	if [ "$UBUNTU_GREATER" = true ]; then
		sudo apt-get install -y mongodb
	else
		sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
		echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
		sudo apt-get update
		sudo apt-get install -y mongodb-org
		sudo systemctl start mongod
	fi
	echo ""
	echo -e "  MongoDB Installed"
	echo ""
	echo -e "  Adding MongoDB to Auto Start"
	echo ""
	if [ "$UBUNTU_GREATER" = true ]; then
		sudo systemctl enable mongodb.service
	else
		sudo systemctl enable mongod.service
	fi
	echo ""
	echo -e "  MongoDB Added to Auto Start"
	echo -e "${YELLOW}┗ ---------------------${NOSTYLE}"
	changeMongoDbIcon
}