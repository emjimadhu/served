#!/bin/bash

nginxInstallation () {
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "${YELLOW}┏ ---------------------" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Installing ${BOLD}NGINX${NOSTYLE}" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Updating Repos" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	sudo apt-get update
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Installing Nginx Package" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	sudo apt-get install nginx
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  NGINX Installed" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Creating Directory for Symlink ${YELLOW}${ITALICS}$DEFAULT_WWW_DIR${NOSTYLE} to ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE}" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	mkdir -p ~/$LOCAL_WWW_DIR/default
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE} directory created" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Symlinking ${YELLOW}${ITALICS}$DEFAULT_WWW_DIR${NOSTYLE} to ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR${NOSTYLE}" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	# Removing www directory so that symlink created properly
	echolog "" $NGINX_INSTALLATION_LOG
	sudo rm www
	sudo ln -s ~/static-sites $DEFAULT_WWW_DIR
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Symlink created successfully." $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Alterting ${YELLOW}${ITALICS}/etc/nginx/sites-available/default${NOSTYLE} to point to new symlink created location. Original is backedup ${YELLOW}${ITALICS}(/etc/nginx/sites-available/default.bak)${NOSTYLE}" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
	sudo cp files/nginx/default /etc/nginx/sites-avaiable/
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Altered ${YELLOW}${ITALICS}/etc/nginx/sites-available/default${NOSTYLE} Successfully" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Copying Boilerplate Templates for Easy of Access. Find these files in ${YELLOW}${ITALICS}~/$LOCAL_WWW_DIR/default${NOSTYLE}" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	cp -a files/nginx/www/. ~/$LOCAL_WWW_DIR/default/
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Copied All Boilerplates Successfully" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Restarting Nginx Server" $NGINX_INSTALLATION_LOG
	echolog "" $NGINX_INSTALLATION_LOG
	sudo systemctl restart nginx.service
	PUBLIC_IP="$(wget -qO- https://ipecho.net/plain ; echo)"
	echolog "" $NGINX_INSTALLATION_LOG
	echolog "  Nginx Installed Successfully to ${YELLOW}${BOLD}http://$PUBLIC_IP${NOSTYLE} to see the changes." $NGINX_INSTALLATION_LOG
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}" $NGINX_INSTALLATION_LOG
	changeNginxIcon
}