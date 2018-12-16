#!/bin/bash

nginxInstallation () {
	echo ""
	echo ""
	echo -e "${YELLOW}┏ ---------------------"
	echo ""
	echo -e "  Installing ${BOLD}NGINX${NOSTYLE}"
	echo ""
	echo -e "  Updating Repos"
	echo ""
	sudo apt-get update
	echo ""
	echo -e "  Installing Nginx Package"
	echo ""
	sudo apt-get install nginx
	echo ""
	echo -e "  NGINX Installed"
	echo ""
	echo -e "  Creating Directory for Symlink ${YELLOW}${ITALICS}$DEFAULT_WWW_DIR${NOSTYLE} to ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE}"
	echo ""
	mkdir -p ~/$LOCAL_WWW_DIR/default
	echo ""
	echo -e "  ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE} directory created"
	echo ""
	echo -e "  Symlinking ${YELLOW}${ITALICS}$DEFAULT_WWW_DIR${NOSTYLE} to ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE}"
	echo ""
	# Removing www directory so that symlink created properly
	echo ""
	sudo rm www
	sudo ln -s ~/static-sites $DEFAULT_WWW_DIR
	echo ""
	echo -e "  Symlink created successfully."
	echo ""
	echo -e "  Alterting ${YELLOW}${ITALICS}/etc/nginx/sites-available/default${NOSTYLE} to point to new symlink created location. Original is backedup ${YELLOW}${ITALICS}(/etc/nginx/sites-available/default.bak)${NOSTYLE}"
	echo ""
	sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
	sudo cp files/nginx/default /etc/nginx/sites-avaiable/
	echo ""
	echo -e "  Altered ${YELLOW}${ITALICS}/etc/nginx/sites-available/default${NOSTYLE} Successfully"
	echo ""
	echo -e "  Copying Boilerplate Templates for Easy of Access. Find these files in ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR/default${NOSTYLE}"
	echo ""
	cp -a files/nginx/www/. ~/$LOCAL_WWW_DIR/default/
	echo ""
	echo -e "  Copied All Boilerplates Successfully"
	echo ""
	echo -e "  Restarting Nginx Server"
	echo ""
	sudo systemctl restart nginx.service
	PUBLIC_IP="$(wget -qO- https://ipecho.net/plain ; echo)"
	echo ""
	echo -e "  Nginx Installed Successfully to ${YELLOW}${BOLD}http://$PUBLIC_IP${NOSTYLE} to see the changes."
	echo -e "${YELLOW}┗ ---------------------${NOSTYLE}"
	changeNginxIcon
}