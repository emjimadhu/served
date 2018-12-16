#!/bin/bash

nginxInstallation () {
	echolog ""
	echolog ""
	echolog "${YELLOW}┏ ---------------------"
	echolog ""
	echolog "  Installing ${BOLD}NGINX${NOSTYLE}"
	echolog ""
	echolog "  Updating Repos"
	echolog ""
	sudo apt-get update
	echolog ""
	echolog "  Installing Nginx Package"
	echolog ""
	sudo apt-get install nginx
	echolog ""
	echolog "  NGINX Installed"
	echolog ""
	echolog "  Creating Directory for Symlink ${YELLOW}${ITALICS}$DEFAULT_WWW_DIR${NOSTYLE} to ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE}"
	echolog ""
	mkdir -p ~/$LOCAL_WWW_DIR/default
	echolog ""
	echolog "  ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE} directory created"
	echolog ""
	echolog "  Symlinking ${YELLOW}${ITALICS}$DEFAULT_WWW_DIR${NOSTYLE} to ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE}"
	echolog ""
	# Removing www directory so that symlink created properly
	echolog ""
	sudo rm www
	sudo ln -s ~/static-sites $DEFAULT_WWW_DIR
	echolog ""
	echolog "  Symlink created successfully."
	echolog ""
	echolog "  Alterting ${YELLOW}${ITALICS}/etc/nginx/sites-available/default${NOSTYLE} to point to new symlink created location. Original is backedup ${YELLOW}${ITALICS}(/etc/nginx/sites-available/default.bak)${NOSTYLE}"
	echolog ""
	sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
	sudo cp files/nginx/default /etc/nginx/sites-avaiable/
	echolog ""
	echolog "  Altered ${YELLOW}${ITALICS}/etc/nginx/sites-available/default${NOSTYLE} Successfully"
	echolog ""
	echolog "  Copying Boilerplate Templates for Easy of Access. Find these files in ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR/default${NOSTYLE}"
	echolog ""
	cp -a files/nginx/www/. ~/$LOCAL_WWW_DIR/default/
	echolog ""
	echolog "  Copied All Boilerplates Successfully"
	echolog ""
	echolog "  Restarting Nginx Server"
	echolog ""
	sudo systemctl restart nginx.service
	PUBLIC_IP="$(wget -qO- https://ipecho.net/plain ; echo)"
	echolog ""
	echolog "  Nginx Installed Successfully to ${YELLOW}${BOLD}http://$PUBLIC_IP${NOSTYLE} to see the changes."
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}"
	changeNginxIcon
}