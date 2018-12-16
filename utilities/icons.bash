#!/bin/sh

INSTALLEDICON="✓"

# ICONS
changeWebServerIcon () {
	WEBSERVER_ICON=$INSTALLEDICON
}

changeDatabasesIcon () {
	DATABASES_ICON=$INSTALLEDICON
}

changeNginxIcon () {
	if which nginx > /dev/null 2>&1; then
    	NGINX_ICON=$INSTALLEDICON
		changeWebServerIcon
	fi
}

changeNginxIcon () {
	NODE_ICON=$INSTALLEDICON
}

changeMongoDbIcon () {
	if which mongod > /dev/null 2>&1; then
    	MONGODB_ICON=$INSTALLEDICON
		changeDatabasesIcon
	fi
}